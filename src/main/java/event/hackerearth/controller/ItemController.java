package event.hackerearth.controller;

import java.io.File;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.apache.commons.io.FilenameUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import event.hackerearth.common.Constant;
import event.hackerearth.common.InputValidator;
import event.hackerearth.model.Address;
import event.hackerearth.model.Item;
import event.hackerearth.model.User;
import event.hackerearth.service.ItemService;
import event.hackerearth.service.UserService;

@Controller
public class ItemController {
    @Autowired()
    private ItemService itemService;

    @Autowired()
    private UserService userService;

    public void setItemService(ItemService itemService) {
        this.itemService = itemService;
    }

    public void setUserService(UserService userService) {
        this.userService = userService;
    }

    @RequestMapping("/items")
    public ModelAndView viewItems(final HttpServletRequest request) {
        String cityInfo = (String) request.getSession(true).getAttribute("city");
        String localityInfo = (String) request.getSession(true).getAttribute("locality");
        List<Item> itemsList = itemService.getItems(cityInfo, localityInfo);
        ModelAndView mv = new ModelAndView(Constant.ITEMS_PAGE);

        Boolean isfilteredArea = true;
        if (null == cityInfo || null == localityInfo) {
            isfilteredArea = false;
        }
        mv.addObject("itemsCount", itemsList.size());
        mv.addObject("itemsList", itemsList);
        mv.addObject("isfilteredArea", isfilteredArea);
        mv.addObject("city", cityInfo);
        mv.addObject("locality", localityInfo);

        return mv;
    }

    @RequestMapping("/item-details")
    public ModelAndView getItemDetails(final HttpServletRequest request) {
        String itemId = request.getParameter("item");
        Item item = itemService.getItem(itemId);
        ModelAndView mv = new ModelAndView("item-details");
        mv.addObject("item", item);
        return mv;
    }

    @RequestMapping(method = RequestMethod.POST, value = "/filter-area")
    public ModelAndView filterArea(final HttpServletRequest request) {
        String cityInfo = request.getParameter("city");
        String localityInfo = request.getParameter("locality");
        if (null != cityInfo || null != localityInfo) {
            request.getSession(true).setAttribute("city", cityInfo);
            request.getSession(true).setAttribute("locality", localityInfo);
        }
        return viewItems(request);
    }

    @RequestMapping("/sell-item")
    public ModelAndView getSellItemForm(final HttpServletRequest request) {
        User user = (User) request.getSession().getAttribute("user");
        ModelAndView mv;

        if (user == null) {
            mv = new ModelAndView("auth-user");
        } else
            mv = new ModelAndView("add-item");

        return mv;
    }

    @RequestMapping(value = { "/add-item" }, method = { RequestMethod.POST })
    @ResponseBody
    public ModelAndView addItem(final HttpServletRequest request) {
        User user = (User) request.getSession().getAttribute("user");
        // TODO
        user = new User();
        user.setName("nel");
        user.setEmail("nel@gmal.com");

        String phone;
        String addressLine1;
        String locality;
        String city;
        String state;
        String pincode;

        String title;
        String description;
        String price;
        String quantity;
        String validFrom;
        String validTill;

        DiskFileItemFactory factory = new DiskFileItemFactory();
        factory.setSizeThreshold(Constant.MAX_MEMORY_SIZE);
        factory.setRepository(new File(System.getProperty("java.io.tmpdir")));

        ServletFileUpload upload = new ServletFileUpload(factory);
        upload.setSizeMax(Constant.MAX_REQUEST_SIZE);
        String itemImgName = null;
        String filePath = null;
        File uploadedFile = null;
        FileItem fileItem = null;

        Item foodItem = new Item();
        Address addr = new Address();

        ModelAndView mv = new ModelAndView(Constant.ADD_SUCCESS_PAGE);
        try {
            @SuppressWarnings("rawtypes")
            List requestItems = upload.parseRequest(request);
            for (Object requestItem : requestItems) {
                fileItem = (FileItem) requestItem;

                if (!fileItem.isFormField()) {
                    itemImgName = new File(fileItem.getName()).getName();
                    if (!itemImgName.equals(Constant.EMPTY_STRING)) {

                        String imgExtension = FilenameUtils.getExtension(itemImgName);
                        InputValidator.validateImg(fileItem);

                        itemImgName = user.getName() + System.currentTimeMillis() + '.' + imgExtension;
                        foodItem.setImage_url(itemImgName);
                        
                     // saves the file to upload directory
                        filePath = getImageDirPath(request) + File.separator + itemImgName;
                        uploadedFile = new File(filePath);
                        if (!uploadedFile.canRead()) {
                            uploadedFile.setReadable(true);
                        }
                        fileItem.write(uploadedFile);
                    }
                }

                else {
                    switch (fileItem.getFieldName()) {
                    case Constant.ITEM_TITLE:
                        title = fileItem.getString();
                        foodItem.setTitle(title);
                        break;
                    case Constant.ITEM_DESCRIPTION:
                        description = fileItem.getString();
                        foodItem.setDescription(description);
                        break;
                    case Constant.ITEM_PRICE:
                        price = fileItem.getString();
                        Integer intPrice = new Integer(price);
                        foodItem.setPrice(intPrice);
                        break;
                    case Constant.ITEM_QUANTITY:
                        quantity = fileItem.getString();
                        Integer intQuantity = new Integer(quantity);
                        foodItem.setQuantity(intQuantity);
                        break;
                    case Constant.ITEM_VALID_FROM:
                        validFrom = fileItem.getString();
                        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm");
                        SimpleDateFormat output = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
                        Date d = sdf.parse(validFrom);
                        String formattedTime = output.format(d);
                        foodItem.setValidFrom(Timestamp.valueOf(formattedTime));
                        break;
                    case Constant.ITEM_VALID_TILL:
                        validTill = fileItem.getString();
                        sdf = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm");
                        output = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
                        d = sdf.parse(validTill);
                        formattedTime = output.format(d);
                        foodItem.setValidTill(Timestamp.valueOf(formattedTime));
                        break;

                    case Constant.PHONE:
                        phone = fileItem.getString();
                        user.setPhone(phone);
                        break;
                    case Constant.ADDRESS_LINE1:
                        addressLine1 = fileItem.getString();
                        addr.setAddrLine1(addressLine1);
                        break;
                    case Constant.LOCALITY:
                        locality = fileItem.getString();
                        addr.setLocality(locality);
                        break;
                    case Constant.CITY:
                        city = fileItem.getString();
                        addr.setCity(city);
                        break;
                    case Constant.STATE:
                        state = fileItem.getString();
                        addr.setState(state);
                        break;
                    case Constant.PINCODE:
                        pincode = fileItem.getString();
                        addr.setPincode(pincode);
                        break;
                    }
                }
            }
            foodItem.setAddress(addr);
            foodItem.setUser(user);
            List<Item> items = user.getItems();
            if (items == null)
                items = new ArrayList<Item>();
            items.add(foodItem);
            user.setAddress(addr);
            user.setItems(items);
            userService.saveUser(user);
            // itemService.addItem(foodItem);
            mv.addObject("successMessage", Constant.SUCCESS_MESSAGE);
        } catch (Exception e) {
            mv.addObject("errorMessage", Constant.ERROR_MESSAGE);
            e.printStackTrace();
        }
        return mv;

    }

    private String getRootPath(final HttpServletRequest request) {
        String path = request.getSession().getServletContext().getRealPath("/");
        path = path.substring(0, path.lastIndexOf(File.separatorChar));
        return path;
    }

    private String getImageDirPath(final HttpServletRequest request) {
        return getRootPath(request) + File.separator + Constant.IMAGES_DIR;
    }

}
