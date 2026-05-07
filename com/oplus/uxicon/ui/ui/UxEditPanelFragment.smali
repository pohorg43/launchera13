.class public Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;
.super Lcom/coui/appcompat/panel/COUIPanelFragment;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment$m;,
        Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment$n;,
        Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment$l;
    }
.end annotation


# static fields
.field private static final ALL_EDIT_VALUE:I = 0x11

.field private static final BROADCAST_ACTION:Ljava/lang/String; = "com.oplus.uxdesign.action.SAVE_CHOOSE_ICON"

.field private static final BUNDLE_KEY:Ljava/lang/String; = "choose_icon_key"

.field private static final BUNDLE_KEY_COMPONENT_NAME:Ljava/lang/String; = "component_name_key"

.field private static final BUNDLE_KEY_IS_FROM_CHOOSE:Ljava/lang/String; = "is_from_choose_dialog_key"

.field private static final BUNDLE_KEY_PACKAGE_LABEL:Ljava/lang/String; = "package_label_key"

.field private static final BUNDLE_KEY_PACKAGE_NAME:Ljava/lang/String; = "package_name_key"

.field private static final BUNDLE_KEY_USERID:Ljava/lang/String; = "userid_key"

.field private static final COM_ANDROID_CONTACTS:Ljava/lang/String; = "com.android.contacts"

.field private static final DEFAULT_USER_ID:I = 0x0

.field private static final DIALER_PREFIX:Ljava/lang/String; = "dialer_"

.field private static final DRAWABLE_EDIT_VALUE:I = 0x10

.field private static final LABEL_EDIT_VALUE:I = 0x1

.field private static final NONE_EDIT_VALUE:I = 0x0

.field private static final PANEL_ANIM_DURATION:I = 0x0

.field private static final TAG:Ljava/lang/String; = "UxEditPanelFragment"

.field private static final USER_MODIFY_TYPE_KEY:Ljava/lang/String; = "user_modify_type"

.field private static final USER_RESET_KEY:Ljava/lang/String; = "user_reset_type"

.field private static final USER_SET_ITEM_COMPONENT:Ljava/lang/String; = "use_choose_item_component"

.field private static final USER_SET_ITEM_PACKAGE:Ljava/lang/String; = "use_choose_package"

.field private static final USER_SET_ITEM_USERID:Ljava/lang/String; = "use_choose_package_userid"

.field private static final USER_SET_TEXT_KEY:Ljava/lang/String; = "user_set_name"


# instance fields
.field private mAppInfoList:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mCacheDrawableList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/oplus/uxicon/ui/util/c$a;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private mChangeIconClickListener:Landroid/view/View$OnClickListener;

.field private mCurrentPackageUserId:I

.field private mEditText:Lcom/coui/appcompat/edittext/COUIEditText;

.field private final mHandler:Landroid/os/Handler;

.field private mIsContact:Z

.field private mIsFromChoose:Z

.field private final mJumpRunnable:Ljava/lang/Runnable;

.field private mNeedRemoveFile:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mOnChoosePanelHideListener:Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment$n;

.field private final mOnFetchIcons:Lcom/oplus/uxicon/ui/ui/a$a;

.field private mOnFileSavedListener:Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment$m;

.field private mOriginAppName:Ljava/lang/String;

.field private mOriginComponentName:Ljava/lang/String;

.field private mOriginLabel:Ljava/lang/String;

.field private mOriginPackageName:Ljava/lang/String;

.field private mPreviewDrawable:Landroid/graphics/drawable/Drawable;

.field private mPreviewImage:Landroid/widget/ImageView;

.field private final mRunnable:Ljava/lang/Runnable;

.field private mSaveButtonClickListener:Landroid/view/View$OnClickListener;

.field private mTask:Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment$n;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Lcom/coui/appcompat/panel/COUIPanelFragment;-><init>()V

    new-instance v0, Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment$c;

    invoke-direct {v0, p0}, Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment$c;-><init>(Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;)V

    iput-object v0, p0, Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;->mOnFetchIcons:Lcom/oplus/uxicon/ui/ui/a$a;

    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment$d;

    invoke-direct {v1, p0}, Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment$d;-><init>(Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment$e;

    invoke-direct {v0, p0}, Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment$e;-><init>(Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;)V

    iput-object v0, p0, Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;->mRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment$f;

    invoke-direct {v0, p0}, Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment$f;-><init>(Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;)V

    iput-object v0, p0, Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;->mJumpRunnable:Ljava/lang/Runnable;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;->mAppInfoList:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;->mCacheDrawableList:Ljava/util/Map;

    const/4 v0, 0x0

    iput v0, p0, Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;->mCurrentPackageUserId:I

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;->mNeedRemoveFile:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-boolean v0, p0, Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;->mIsContact:Z

    new-instance v0, Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment$g;

    invoke-direct {v0, p0}, Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment$g;-><init>(Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;)V

    iput-object v0, p0, Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;->mOnChoosePanelHideListener:Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment$n;

    return-void
.end method

.method public static synthetic a(Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/view/View;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;->lambda$initInteract$0(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;->mCacheDrawableList:Ljava/util/Map;

    return-object p0
.end method

.method public static synthetic access$002(Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;Ljava/util/Map;)Ljava/util/Map;
    .registers 2

    iput-object p1, p0, Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;->mCacheDrawableList:Ljava/util/Map;

    return-object p1
.end method

.method public static synthetic access$100(Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .registers 1

    iget-object p0, p0, Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;->mAppInfoList:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p0
.end method

.method public static synthetic access$1000(Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;)Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment$m;
    .registers 1

    iget-object p0, p0, Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;->mOnFileSavedListener:Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment$m;

    return-object p0
.end method

.method public static synthetic access$102(Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;Ljava/util/concurrent/CopyOnWriteArrayList;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .registers 2

    iput-object p1, p0, Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;->mAppInfoList:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p1
.end method

.method public static synthetic access$1100(Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;)Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment$n;
    .registers 1

    iget-object p0, p0, Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;->mTask:Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment$n;

    return-object p0
.end method

.method public static synthetic access$1102(Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment$n;)Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment$n;
    .registers 2

    iput-object p1, p0, Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;->mTask:Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment$n;

    return-object p1
.end method

.method public static synthetic access$1200(Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;)V
    .registers 1

    invoke-direct {p0}, Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;->jumpToChangeIconPanel()V

    return-void
.end method

.method public static synthetic access$1300(Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;->mOriginAppName:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$1400(Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;->mOriginComponentName:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$1500(Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;)I
    .registers 1

    iget p0, p0, Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;->mCurrentPackageUserId:I

    return p0
.end method

.method public static synthetic access$1600(Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;)Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment$n;
    .registers 1

    iget-object p0, p0, Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;->mOnChoosePanelHideListener:Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment$n;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;)Lcom/oplus/uxicon/ui/ui/a$a;
    .registers 1

    iget-object p0, p0, Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;->mOnFetchIcons:Lcom/oplus/uxicon/ui/ui/a$a;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;)Landroid/graphics/drawable/Drawable;
    .registers 1

    iget-object p0, p0, Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;->mPreviewDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public static synthetic access$402(Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .registers 2

    iput-object p1, p0, Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;->mPreviewDrawable:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method public static synthetic access$500(Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;)Landroid/widget/ImageView;
    .registers 1

    iget-object p0, p0, Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;->mPreviewImage:Landroid/widget/ImageView;

    return-object p0
.end method

.method public static synthetic access$600(Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    iget-object p0, p0, Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;->mNeedRemoveFile:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static synthetic access$700(Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;)V
    .registers 1

    invoke-direct {p0}, Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;->dismissPanel()V

    return-void
.end method

.method public static synthetic access$800(Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;->mOriginPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$900(Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;->mIsContact:Z

    return p0
.end method

.method public static synthetic b(Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;->lambda$initInteract$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic c(Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;)V
    .registers 1

    invoke-direct {p0}, Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;->lambda$initListener$2()V

    return-void
.end method

.method private dismissPanel()V
    .registers 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p0

    check-cast p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;

    invoke-virtual {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->dismiss()V

    :cond_f
    return-void
.end method

.method private editPanelInit()V
    .registers 5

    invoke-virtual {p0}, Lcom/coui/appcompat/panel/COUIPanelFragment;->getToolbar()Lcom/coui/appcompat/toolbar/COUIToolbar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/coui/appcompat/panel/COUIPanelFragment;->getDragView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/oplus/uxicon/ui/R$layout;->edit_panel_layout:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/oplus/uxicon/ui/R$id;->toolbar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/coui/appcompat/toolbar/COUIToolbar;

    sget v2, Lcom/oplus/uxicon/ui/R$string;->ux_edit_panel_title:I

    invoke-virtual {v1, v2}, Lcom/coui/appcompat/toolbar/COUIToolbar;->setTitle(I)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/coui/appcompat/toolbar/COUIToolbar;->setIsTitleCenterStyle(Z)V

    sget v2, Lcom/oplus/uxicon/ui/R$menu;->menu_panel_cancel:I

    invoke-virtual {v1, v2}, Lcom/coui/appcompat/toolbar/COUIToolbar;->inflateMenu(I)V

    invoke-virtual {v1}, Lcom/coui/appcompat/toolbar/COUIToolbar;->getMenu()Landroid/view/Menu;

    move-result-object v1

    sget v2, Lcom/oplus/uxicon/ui/R$id;->cancel:I

    invoke-interface {v1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    new-instance v2, Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment$h;

    invoke-direct {v2, p0}, Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment$h;-><init>(Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;)V

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    invoke-virtual {p0}, Lcom/coui/appcompat/panel/COUIPanelFragment;->getContentView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-direct {p0, v0}, Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;->initInteract(Landroid/view/View;)V

    return-void
.end method

.method private getFirstPageIcons(Ljava/lang/Runnable;)V
    .registers 2

    iget-boolean p0, p0, Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;->mIsFromChoose:Z

    if-nez p0, :cond_b

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_b
    return-void
.end method

.method private initInteract(Landroid/view/View;)V
    .registers 16

    const-string v0, "UxEditPanelFragment"

    sget v1, Lcom/oplus/uxicon/ui/R$id;->edit_reset:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {v1}, Lcom/coui/appcompat/textviewcompatutil/COUITextViewCompatUtil;->a(Landroid/widget/TextView;)V

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lcom/coui/appcompat/textutil/COUIChangeTextUtil;->b(Landroid/widget/TextView;I)V

    sget v2, Lcom/oplus/uxicon/ui/R$id;->edit_save:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/coui/appcompat/button/COUIButton;

    sget v3, Lcom/oplus/uxicon/ui/R$id;->reset_name_btn:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    sget v4, Lcom/oplus/uxicon/ui/R$id;->preview_change_icon:I

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;->mPreviewImage:Landroid/widget/ImageView;

    sget v4, Lcom/oplus/uxicon/ui/R$id;->edit_app_name:I

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/coui/appcompat/edittext/COUIEditText;

    iput-object v4, p0, Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;->mEditText:Lcom/coui/appcompat/edittext/COUIEditText;

    sget v4, Lcom/oplus/uxicon/ui/R$id;->edit_icon:I

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    invoke-direct {p0}, Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;->initListener()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v5

    if-nez v5, :cond_47

    return-void

    :cond_47
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    :try_start_4f
    iget-object v6, p0, Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;->mOriginPackageName:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    const/4 v9, 0x1

    invoke-static {v6, v6, v9, v8}, Lcom/oplus/uxicon/ui/util/UxIconPackHelper;->getIconWithoutEdit(Landroid/content/pm/PackageItemInfo;Landroid/content/pm/ApplicationInfo;ZLandroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v6, v5}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v6, v5}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    iget-object v12, p0, Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;->mOriginPackageName:Ljava/lang/String;

    if-eqz v12, :cond_a6

    iget-object v12, p0, Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;->mOriginComponentName:Ljava/lang/String;

    if-eqz v12, :cond_a6

    new-instance v11, Landroid/content/ComponentName;

    iget-object v12, p0, Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;->mOriginPackageName:Ljava/lang/String;

    iget-object v13, p0, Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;->mOriginComponentName:Ljava/lang/String;

    invoke-direct {v11, v12, v13}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v11, v7}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v11

    invoke-direct {p0, v6, v11}, Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;->isContact(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/ActivityInfo;)Z

    move-result v12

    iput-boolean v12, p0, Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;->mIsContact:Z

    if-eqz v12, :cond_9a

    invoke-virtual {v11, v5}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {v11, v6, v9, p1}, Lcom/oplus/uxicon/ui/util/UxIconPackHelper;->getIconWithoutEdit(Landroid/content/pm/PackageItemInfo;Landroid/content/pm/ApplicationInfo;ZLandroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    move-object v10, v8

    move-object v8, p1

    :cond_9a
    invoke-virtual {v11, v5}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    :cond_a6
    iput-object v11, p0, Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;->mOriginLabel:Ljava/lang/String;

    iget-object p1, p0, Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;->mEditText:Lcom/coui/appcompat/edittext/COUIEditText;

    iget-object v5, p0, Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;->mOriginAppName:Ljava/lang/String;

    invoke-virtual {p1, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;->mOriginAppName:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_ba

    invoke-virtual {v2, v7}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_ba
    iget-object p1, p0, Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;->mPreviewDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_c4

    iget-object v5, p0, Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;->mPreviewImage:Landroid/widget/ImageView;

    invoke-virtual {v5, p1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_d2

    :cond_c4
    if-eqz v10, :cond_cb

    iget-object p1, p0, Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;->mPreviewImage:Landroid/widget/ImageView;

    invoke-virtual {p1, v10}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_cb
    iget-object p1, p0, Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;->mEditText:Lcom/coui/appcompat/edittext/COUIEditText;

    iget-object v5, p0, Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;->mOriginAppName:Ljava/lang/String;

    invoke-virtual {p1, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :goto_d2
    iget p1, p0, Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;->mCurrentPackageUserId:I

    if-eqz p1, :cond_11a

    invoke-static {}, Lcom/oplus/multiapp/OplusMultiAppManager;->getInstance()Lcom/oplus/multiapp/OplusMultiAppManager;

    move-result-object p1

    invoke-virtual {p1, v7}, Lcom/oplus/multiapp/OplusMultiAppManager;->getMultiAppList(I)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_f2

    iget-object v5, p0, Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;->mOriginPackageName:Ljava/lang/String;

    invoke-interface {p1, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f2

    invoke-static {}, Lcom/oplus/multiapp/OplusMultiAppManager;->getInstance()Lcom/oplus/multiapp/OplusMultiAppManager;

    move-result-object p1

    iget-object v5, p0, Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;->mOriginPackageName:Ljava/lang/String;

    invoke-virtual {p1, v5}, Lcom/oplus/multiapp/OplusMultiAppManager;->getMultiAppAlias(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    :cond_f2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "current pkg has multi app, pkg is "

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;->mOriginPackageName:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " appName: "

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " mCurrentPackageUserId: "

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;->mCurrentPackageUserId:I

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11a
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "init views original app name is: "

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Lcom/android/launcher/folder/recommend/g;

    invoke-direct {p1, p0, v8, v11}, Lcom/android/launcher/folder/recommend/g;-><init>(Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p1, Lcom/android/systemui/shared/rotation/b;

    invoke-direct {p1, p0}, Lcom/android/systemui/shared/rotation/b;-><init>(Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;)V

    invoke-virtual {v3, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0, v2}, Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;->judgeSaveBtnDisable(Lcom/coui/appcompat/button/COUIButton;)V
    :try_end_141
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_141} :catch_142

    goto :goto_16b

    :catch_142
    move-exception p1

    const-string v1, "initInteract: packageName: "

    invoke-static {v1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;->mOriginPackageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " componentName: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;->mOriginComponentName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " exception: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_16b
    iget-object p1, p0, Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;->mSaveButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;->mRunnable:Ljava/lang/Runnable;

    invoke-direct {p0, p1}, Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;->getFirstPageIcons(Ljava/lang/Runnable;)V

    iget-object p0, p0, Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;->mChangeIconClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initListener()V
    .registers 2

    new-instance v0, Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment$j;

    invoke-direct {v0, p0}, Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment$j;-><init>(Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;)V

    iput-object v0, p0, Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;->mSaveButtonClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/oplus/statistics/record/a;

    invoke-direct {v0, p0}, Lcom/oplus/statistics/record/a;-><init>(Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;)V

    iput-object v0, p0, Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;->mOnFileSavedListener:Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment$m;

    new-instance v0, Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment$k;

    invoke-direct {v0, p0}, Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment$k;-><init>(Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;)V

    iput-object v0, p0, Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;->mChangeIconClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method private isContact(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/ActivityInfo;)Z
    .registers 5

    const/4 p0, 0x0

    if-eqz p2, :cond_20

    if-nez p1, :cond_6

    goto :goto_20

    :cond_6
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v1, "com.android.contacts"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-virtual {p2}, Landroid/content/pm/ActivityInfo;->getIconResource()I

    move-result p2

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->icon:I

    if-eq p2, p1, :cond_20

    const-string p0, "UxEditPanelFragment"

    const-string p1, "isContacts dialer: true"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    :cond_20
    :goto_20
    return p0
.end method

.method private judgeSaveBtnDisable(Lcom/coui/appcompat/button/COUIButton;)V
    .registers 4

    iget-object v0, p0, Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;->mEditText:Lcom/coui/appcompat/edittext/COUIEditText;

    new-instance v1, Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment$i;

    invoke-direct {v1, p0, p1}, Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment$i;-><init>(Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;Lcom/coui/appcompat/button/COUIButton;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method private jumpToChangeIconPanel()V
    .registers 4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;

    if-eqz v0, :cond_13

    invoke-virtual {p0}, Lcom/coui/appcompat/panel/COUIPanelFragment;->getContentView()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0, v0}, Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;->startToChangeIconPanelAnim(Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;)V

    :cond_13
    return-void
.end method

.method private synthetic lambda$initInteract$0(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/view/View;)V
    .registers 4

    if-eqz p1, :cond_9

    iget-object p3, p0, Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;->mPreviewImage:Landroid/widget/ImageView;

    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iput-object p1, p0, Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;->mPreviewDrawable:Landroid/graphics/drawable/Drawable;

    :cond_9
    iget-object p1, p0, Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;->mEditText:Lcom/coui/appcompat/edittext/COUIEditText;

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;->mNeedRemoveFile:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p1, 0x0

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    return-void
.end method

.method private synthetic lambda$initInteract$1(Landroid/view/View;)V
    .registers 2

    iget-object p0, p0, Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;->mEditText:Lcom/coui/appcompat/edittext/COUIEditText;

    const-string p1, ""

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private synthetic lambda$initListener$2()V
    .registers 1

    invoke-direct {p0}, Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;->sendBroadcast()V

    invoke-direct {p0}, Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;->dismissPanel()V

    return-void
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;
    .registers 8

    new-instance v0, Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;

    invoke-direct {v0}, Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "package_name_key"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "package_label_key"

    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "component_name_key"

    invoke-virtual {v1, p0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "userid_key"

    invoke-virtual {v1, p0, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "is_from_choose_dialog_key"

    invoke-virtual {v1, p0, p4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private sendBroadcast()V
    .registers 6

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.oplus.uxdesign.action.SAVE_CHOOSE_ICON"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iget-object v2, p0, Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;->mEditText:Lcom/coui/appcompat/edittext/COUIEditText;

    invoke-virtual {v2}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "user_set_name"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;->mOriginPackageName:Ljava/lang/String;

    const-string v3, "use_choose_package"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;->mOriginComponentName:Ljava/lang/String;

    const-string v3, "use_choose_item_component"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget v2, p0, Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;->mCurrentPackageUserId:I

    const-string v3, "use_choose_package_userid"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v2, p0, Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;->mEditText:Lcom/coui/appcompat/edittext/COUIEditText;

    invoke-virtual {v2}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    if-eqz v2, :cond_67

    iget-object v2, p0, Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;->mOriginLabel:Ljava/lang/String;

    if-eqz v2, :cond_67

    iget-object v3, p0, Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;->mEditText:Lcom/coui/appcompat/edittext/COUIEditText;

    invoke-virtual {v3}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_67

    iget-object v2, p0, Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;->mPreviewDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_65

    iget-object v2, p0, Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;->mNeedRemoveFile:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_65

    const/16 v2, 0x11

    goto :goto_77

    :cond_65
    const/4 v2, 0x1

    goto :goto_77

    :cond_67
    iget-object v2, p0, Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;->mPreviewDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_76

    iget-object v2, p0, Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;->mNeedRemoveFile:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_76

    const/16 v2, 0x10

    goto :goto_77

    :cond_76
    const/4 v2, 0x0

    :goto_77
    const-string v3, "user_modify_type"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v3, p0, Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;->mNeedRemoveFile:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    const-string v4, "user_reset_type"

    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v3, "choose_icon_key"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendBroadcast text is : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;->mEditText:Lcom/coui/appcompat/edittext/COUIEditText;

    invoke-virtual {v1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " packageName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;->mOriginPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " userChangeType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " hasReset: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;->mNeedRemoveFile:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "UxEditPanelFragment"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private startToChangeIconPanelAnim(Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;)V
    .registers 6

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/oplus/uxicon/ui/R$dimen;->edit_panel_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/oplus/uxicon/ui/R$dimen;->change_panel_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput v0, v2, v3

    const/4 v0, 0x1

    aput v1, v2, v0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v1, Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment$a;

    invoke-direct {v1, p0, p1}, Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment$a;-><init>(Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v1, Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment$b;

    invoke-direct {v1, p0, p1}, Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment$b;-><init>(Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method


# virtual methods
.method public initView(Landroid/view/View;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/coui/appcompat/panel/COUIPanelFragment;->initView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;->editPanelInit()V

    return-void
.end method

.method public onShow(Ljava/lang/Boolean;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/coui/appcompat/panel/COUIPanelFragment;->onShow(Ljava/lang/Boolean;)V

    invoke-virtual {p0}, Lcom/coui/appcompat/panel/COUIPanelFragment;->getContentView()Landroid/view/View;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 4
    .param p1  # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    if-nez p2, :cond_9

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    :cond_9
    if-eqz p2, :cond_42

    const-string p1, "package_name_key"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;->mOriginPackageName:Ljava/lang/String;

    const-string p1, "package_label_key"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;->mOriginAppName:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_29

    iget-object p1, p0, Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;->mOriginAppName:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;->mOriginAppName:Ljava/lang/String;

    :cond_29
    const-string p1, "component_name_key"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;->mOriginComponentName:Ljava/lang/String;

    const/4 p1, 0x0

    const-string v0, "userid_key"

    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;->mCurrentPackageUserId:I

    const-string p1, "is_from_choose_dialog_key"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;->mIsFromChoose:Z

    :cond_42
    return-void
.end method

.method public setAppInfoList(Ljava/util/concurrent/CopyOnWriteArrayList;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;->mAppInfoList:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method

.method public setUseChooseIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 2
    .param p1  # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_4

    iput-object p1, p0, Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;->mPreviewDrawable:Landroid/graphics/drawable/Drawable;

    :cond_4
    return-void
.end method
