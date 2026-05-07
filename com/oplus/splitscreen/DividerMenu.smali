.class public Lcom/oplus/splitscreen/DividerMenu;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/splitscreen/observer/CloseSystemDialogObserver$OnCloseSystemDialogListener;
.implements Lcom/oplus/splitscreen/observer/DisplayConfigurationObserver$OnDisplayConfigChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/splitscreen/DividerMenu$SplitMenuHandler;,
        Lcom/oplus/splitscreen/DividerMenu$SplitMenuPolicy;
    }
.end annotation


# static fields
.field private static final MSG_HIDE_DIVIDER_MENU:I = 0x2

.field private static final MSG_SHOW_DIVIDER_MENU:I = 0x1

.field private static final MSG_SHOW_MENU_POPUP:I = 0x3

.field private static final TAG:Ljava/lang/String; = "DividerMenu"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDividerMenuAnchor:Landroid/view/View;

.field private mDividerMenuPopup:Lcom/oplus/splitscreen/DividerMenuPopupListWindow;

.field private final mHandler:Landroid/os/Handler;

.field private final mMenuHandler:Lcom/oplus/splitscreen/DividerMenu$SplitMenuHandler;

.field private final mMenuPolicy:Lcom/oplus/splitscreen/DividerMenu$SplitMenuPolicy;

.field private final mSplitLayoutSupplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Lcom/android/wm/shell/common/split/SplitLayout;",
            ">;"
        }
    .end annotation
.end field

.field private final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/function/Supplier;Lcom/oplus/splitscreen/DividerMenu$SplitMenuPolicy;Lcom/oplus/splitscreen/DividerMenu$SplitMenuHandler;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/function/Supplier<",
            "Lcom/android/wm/shell/common/split/SplitLayout;",
            ">;",
            "Lcom/oplus/splitscreen/DividerMenu$SplitMenuPolicy;",
            "Lcom/oplus/splitscreen/DividerMenu$SplitMenuHandler;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/oplus/splitscreen/DividerMenu$1;

    invoke-direct {v0, p0}, Lcom/oplus/splitscreen/DividerMenu$1;-><init>(Lcom/oplus/splitscreen/DividerMenu;)V

    iput-object v0, p0, Lcom/oplus/splitscreen/DividerMenu;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/oplus/splitscreen/DividerMenu;->mContext:Landroid/content/Context;

    const-class v0, Landroid/view/WindowManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Lcom/oplus/splitscreen/DividerMenu;->mWindowManager:Landroid/view/WindowManager;

    iput-object p4, p0, Lcom/oplus/splitscreen/DividerMenu;->mMenuHandler:Lcom/oplus/splitscreen/DividerMenu$SplitMenuHandler;

    iput-object p3, p0, Lcom/oplus/splitscreen/DividerMenu;->mMenuPolicy:Lcom/oplus/splitscreen/DividerMenu$SplitMenuPolicy;

    iput-object p2, p0, Lcom/oplus/splitscreen/DividerMenu;->mSplitLayoutSupplier:Ljava/util/function/Supplier;

    invoke-direct {p0}, Lcom/oplus/splitscreen/DividerMenu;->initDividerMenuPopup()V

    return-void
.end method

.method public static synthetic a(Lcom/oplus/splitscreen/DividerMenu;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/oplus/splitscreen/DividerMenu;->lambda$initDividerMenuPopup$0(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method

.method public static synthetic access$000(Lcom/oplus/splitscreen/DividerMenu;)V
    .registers 1

    invoke-direct {p0}, Lcom/oplus/splitscreen/DividerMenu;->showDividerMenu()V

    return-void
.end method

.method public static synthetic access$100(Lcom/oplus/splitscreen/DividerMenu;)V
    .registers 1

    invoke-direct {p0}, Lcom/oplus/splitscreen/DividerMenu;->hideDividerMenu()V

    return-void
.end method

.method public static synthetic access$200(Lcom/oplus/splitscreen/DividerMenu;)V
    .registers 1

    invoke-direct {p0}, Lcom/oplus/splitscreen/DividerMenu;->showDividerMenuPopup()V

    return-void
.end method

.method private addDividerMenuAnchor()V
    .registers 9

    iget-object v0, p0, Lcom/oplus/splitscreen/DividerMenu;->mDividerMenuAnchor:Landroid/view/View;

    if-eqz v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/oplus/splitscreen/DividerMenu;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/wm/shell/R$layout;->split_screen_divider_menu_anchor:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/splitscreen/DividerMenu;->mDividerMenuAnchor:Landroid/view/View;

    iget-object v1, p0, Lcom/oplus/splitscreen/DividerMenu;->mDividerMenuPopup:Lcom/oplus/splitscreen/DividerMenuPopupListWindow;

    invoke-virtual {v1, v0}, Lcom/oplus/splitscreen/DividerMenuPopupListWindow;->show(Landroid/view/View;)V

    iget-object v0, p0, Lcom/oplus/splitscreen/DividerMenu;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/wm/shell/splitscreen/DividerOrientation;->isHorizontalDivision(Landroid/content/Context;)Z

    move-result v0

    iget-object v1, p0, Lcom/oplus/splitscreen/DividerMenu;->mDividerMenuPopup:Lcom/oplus/splitscreen/DividerMenuPopupListWindow;

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/oplus/splitscreen/DividerMenu;->mSplitLayoutSupplier:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {v0}, Lcom/android/wm/shell/common/split/SplitLayout;->getDividerBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    goto :goto_40

    :cond_30
    iget-object v0, p0, Lcom/oplus/splitscreen/DividerMenu;->mSplitLayoutSupplier:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {v0}, Lcom/android/wm/shell/common/split/SplitLayout;->getDividerBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    :goto_40
    invoke-virtual {v1, v0}, Lcom/oplus/splitscreen/DividerMenuPopupListWindow;->measurePopupWindow(I)V

    iget-object v0, p0, Lcom/oplus/splitscreen/DividerMenu;->mDividerMenuPopup:Lcom/oplus/splitscreen/DividerMenuPopupListWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/oplus/splitscreen/DividerMenu;->mDividerMenuPopup:Lcom/oplus/splitscreen/DividerMenuPopupListWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/oplus/splitscreen/DividerMenu;->mSplitLayoutSupplier:Ljava/util/function/Supplier;

    invoke-interface {v2}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {v2}, Lcom/android/wm/shell/common/split/SplitLayout;->getDividerBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget-object v3, p0, Lcom/oplus/splitscreen/DividerMenu;->mSplitLayoutSupplier:Ljava/util/function/Supplier;

    invoke-interface {v3}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-static {v3}, Lcom/oplus/splitscreen/DividerUtils;->getDisplayBounds(Lcom/android/wm/shell/common/split/SplitLayout;)Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    invoke-static {}, Lcom/oplus/splitscreen/util/SplitScreenUtils;->isLayoutDirectionRtl()Z

    move-result v5

    div-int/lit8 v6, v0, 0x2

    sub-int/2addr v4, v6

    div-int/lit8 v6, v1, 0x2

    sub-int/2addr v2, v6

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v6

    sub-int/2addr v6, v4

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v7

    sub-int/2addr v7, v2

    if-gt v6, v0, :cond_8a

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v4

    sub-int/2addr v4, v0

    :cond_8a
    if-gt v7, v1, :cond_92

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v0

    sub-int v2, v0, v1

    :cond_92
    const/high16 v0, 0x42200000  # 40.0f

    iget-object v1, p0, Lcom/oplus/splitscreen/DividerMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oplus/splitscreen/DividerUtils;->dpToPx(FLandroid/content/res/Resources;)I

    move-result v0

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v2}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    const/16 v4, 0x218

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v4, v4, 0x10

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/4 v4, -0x3

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->format:I

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v4

    sub-int/2addr v4, v1

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    sub-int/2addr v3, v0

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    const/16 v0, 0x7d3

    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const-string v0, "DividerMenuAnchor"

    invoke-virtual {v2, v0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    if-eqz v5, :cond_d9

    const v0, 0x800005

    goto :goto_dc

    :cond_d9
    const v0, 0x800003

    :goto_dc
    or-int/lit8 v0, v0, 0x30

    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 v0, 0x3

    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    iget-object v0, p0, Lcom/oplus/splitscreen/DividerMenu;->mDividerMenuAnchor:Landroid/view/View;

    const/16 v1, 0x304

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    iget-object v0, p0, Lcom/oplus/splitscreen/DividerMenu;->mWindowManager:Landroid/view/WindowManager;

    iget-object p0, p0, Lcom/oplus/splitscreen/DividerMenu;->mDividerMenuAnchor:Landroid/view/View;

    invoke-interface {v0, p0, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public static synthetic b(Lcom/oplus/splitscreen/DividerMenu;)V
    .registers 1

    invoke-direct {p0}, Lcom/oplus/splitscreen/DividerMenu;->reset()V

    return-void
.end method

.method private hideDividerMenu()V
    .registers 4

    iget-object v0, p0, Lcom/oplus/splitscreen/DividerMenu;->mDividerMenuPopup:Lcom/oplus/splitscreen/DividerMenuPopupListWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showDividerMenu isShowing="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DividerMenu"

    invoke-static {v2, v1}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_24

    iget-object p0, p0, Lcom/oplus/splitscreen/DividerMenu;->mDividerMenuPopup:Lcom/oplus/splitscreen/DividerMenuPopupListWindow;

    invoke-virtual {p0}, Lcom/oplus/splitscreen/DividerMenuPopupListWindow;->dismiss()V

    goto :goto_27

    :cond_24
    invoke-direct {p0}, Lcom/oplus/splitscreen/DividerMenu;->reset()V

    :goto_27
    return-void
.end method

.method private initDividerMenuPopup()V
    .registers 3

    new-instance v0, Lcom/oplus/splitscreen/DividerMenuPopupListWindow;

    iget-object v1, p0, Lcom/oplus/splitscreen/DividerMenu;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/oplus/splitscreen/DividerMenuPopupListWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oplus/splitscreen/DividerMenu;->mDividerMenuPopup:Lcom/oplus/splitscreen/DividerMenuPopupListWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oplus/splitscreen/DividerMenuPopupListWindow;->setDismissTouchOutside(Z)V

    iget-object v0, p0, Lcom/oplus/splitscreen/DividerMenu;->mDividerMenuPopup:Lcom/oplus/splitscreen/DividerMenuPopupListWindow;

    new-instance v1, Lcom/android/launcher/guide/j;

    invoke-direct {v1, p0}, Lcom/android/launcher/guide/j;-><init>(Lcom/oplus/splitscreen/DividerMenu;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    iget-object v0, p0, Lcom/oplus/splitscreen/DividerMenu;->mDividerMenuPopup:Lcom/oplus/splitscreen/DividerMenuPopupListWindow;

    new-instance v1, Lcom/oplus/splitscreen/a;

    invoke-direct {v1, p0}, Lcom/oplus/splitscreen/a;-><init>(Lcom/oplus/splitscreen/DividerMenu;)V

    invoke-virtual {v0, v1}, Lcom/oplus/splitscreen/DividerMenuPopupListWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method private synthetic lambda$initDividerMenuPopup$0(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 6

    iget-object p1, p0, Lcom/oplus/splitscreen/DividerMenu;->mMenuHandler:Lcom/oplus/splitscreen/DividerMenu$SplitMenuHandler;

    if-nez p1, :cond_5

    return-void

    :cond_5
    if-nez p3, :cond_b

    invoke-interface {p1}, Lcom/oplus/splitscreen/DividerMenu$SplitMenuHandler;->onSwapDockedTask()V

    goto :goto_18

    :cond_b
    const/4 p2, 0x1

    if-ne p3, p2, :cond_12

    invoke-interface {p1}, Lcom/oplus/splitscreen/DividerMenu$SplitMenuHandler;->onSaveSplitPair()V

    goto :goto_18

    :cond_12
    const/4 p2, 0x2

    if-ne p3, p2, :cond_18

    invoke-interface {p1}, Lcom/oplus/splitscreen/DividerMenu$SplitMenuHandler;->toggleDividerOrientation()V

    :cond_18
    :goto_18
    invoke-virtual {p0}, Lcom/oplus/splitscreen/DividerMenu;->hideMenuIfNeed()V

    return-void
.end method

.method private removeDividerMenuAnchor()V
    .registers 3

    iget-object v0, p0, Lcom/oplus/splitscreen/DividerMenu;->mDividerMenuAnchor:Landroid/view/View;

    if-eqz v0, :cond_c

    iget-object v1, p0, Lcom/oplus/splitscreen/DividerMenu;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1, v0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oplus/splitscreen/DividerMenu;->mDividerMenuAnchor:Landroid/view/View;

    :cond_c
    return-void
.end method

.method private reset()V
    .registers 2

    :try_start_0
    invoke-static {}, Lcom/oplus/splitscreen/observer/CloseSystemDialogObserver;->getInstance()Lcom/oplus/splitscreen/observer/CloseSystemDialogObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oplus/splitscreen/observer/CloseSystemDialogObserver;->removeListener(Lcom/oplus/splitscreen/observer/CloseSystemDialogObserver$OnCloseSystemDialogListener;)V

    invoke-static {}, Lcom/oplus/splitscreen/observer/DisplayConfigurationObserver;->getInstance()Lcom/oplus/splitscreen/observer/DisplayConfigurationObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oplus/splitscreen/observer/DisplayConfigurationObserver;->removeListener(Lcom/oplus/splitscreen/observer/DisplayConfigurationObserver$OnDisplayConfigChangeListener;)V

    invoke-direct {p0}, Lcom/oplus/splitscreen/DividerMenu;->removeDividerMenuAnchor()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_11} :catch_11

    :catch_11
    return-void
.end method

.method private showDividerMenu()V
    .registers 4

    iget-object v0, p0, Lcom/oplus/splitscreen/DividerMenu;->mDividerMenuPopup:Lcom/oplus/splitscreen/DividerMenuPopupListWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showDividerMenu isShowing="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DividerMenu"

    invoke-static {v2, v1}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_1f

    return-void

    :cond_1f
    invoke-direct {p0}, Lcom/oplus/splitscreen/DividerMenu;->initDividerMenuPopup()V

    invoke-direct {p0}, Lcom/oplus/splitscreen/DividerMenu;->updateDividerMenuPopupAdapter()V

    invoke-direct {p0}, Lcom/oplus/splitscreen/DividerMenu;->addDividerMenuAnchor()V

    iget-object v0, p0, Lcom/oplus/splitscreen/DividerMenu;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/oplus/splitscreen/DividerMenu;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method private showDividerMenuPopup()V
    .registers 4

    iget-object v0, p0, Lcom/oplus/splitscreen/DividerMenu;->mDividerMenuPopup:Lcom/oplus/splitscreen/DividerMenuPopupListWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    :cond_9
    iget-object v0, p0, Lcom/oplus/splitscreen/DividerMenu;->mDividerMenuAnchor:Landroid/view/View;

    if-eqz v0, :cond_26

    iget-object v1, p0, Lcom/oplus/splitscreen/DividerMenu;->mDividerMenuPopup:Lcom/oplus/splitscreen/DividerMenuPopupListWindow;

    sget v2, Lcom/android/wm/shell/R$id;->divider_menu_anchor:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/oplus/splitscreen/DividerMenuPopupListWindow;->show(Landroid/view/View;)V

    invoke-static {}, Lcom/oplus/splitscreen/observer/CloseSystemDialogObserver;->getInstance()Lcom/oplus/splitscreen/observer/CloseSystemDialogObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oplus/splitscreen/observer/CloseSystemDialogObserver;->addListener(Lcom/oplus/splitscreen/observer/CloseSystemDialogObserver$OnCloseSystemDialogListener;)V

    invoke-static {}, Lcom/oplus/splitscreen/observer/DisplayConfigurationObserver;->getInstance()Lcom/oplus/splitscreen/observer/DisplayConfigurationObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oplus/splitscreen/observer/DisplayConfigurationObserver;->addListener(Lcom/oplus/splitscreen/observer/DisplayConfigurationObserver$OnDisplayConfigChangeListener;)V

    :cond_26
    return-void
.end method

.method private updateDividerMenuPopupAdapter()V
    .registers 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/oplus/splitscreen/DividerMenu;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/wm/shell/splitscreen/DividerOrientation;->isHorizontalDivision(Landroid/content/Context;)Z

    move-result v1

    new-instance v2, Lcom/coui/appcompat/poplist/PopupListItem;

    if-nez v1, :cond_12

    sget v1, Lcom/android/wm/shell/R$drawable;->split_screen_switch_horizontal:I

    goto :goto_14

    :cond_12
    sget v1, Lcom/android/wm/shell/R$drawable;->split_screen_switch_vertical:I

    :goto_14
    iget-object v3, p0, Lcom/oplus/splitscreen/DividerMenu;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/wm/shell/R$string;->oplus_swap_split_screen_position:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v2, v1, v3, v4}, Lcom/coui/appcompat/poplist/PopupListItem;-><init>(ILjava/lang/String;Z)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/oplus/splitscreen/DividerMenu;->mMenuPolicy:Lcom/oplus/splitscreen/DividerMenu$SplitMenuPolicy;

    if-eqz v1, :cond_49

    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/splitscreen/SplitToggleHelper;->hasSplitPairFeature()Z

    move-result v1

    if-eqz v1, :cond_49

    new-instance v1, Lcom/coui/appcompat/poplist/PopupListItem;

    sget v2, Lcom/android/wm/shell/R$drawable;->split_screen_save:I

    iget-object v3, p0, Lcom/oplus/splitscreen/DividerMenu;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/wm/shell/R$string;->oplus_save_split_screen_combination:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/oplus/splitscreen/DividerMenu;->mMenuPolicy:Lcom/oplus/splitscreen/DividerMenu$SplitMenuPolicy;

    invoke-interface {v4}, Lcom/oplus/splitscreen/DividerMenu$SplitMenuPolicy;->canSaveSplitPair()Z

    move-result v4

    invoke-direct {v1, v2, v3, v4}, Lcom/coui/appcompat/poplist/PopupListItem;-><init>(ILjava/lang/String;Z)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_49
    iget-object v1, p0, Lcom/oplus/splitscreen/DividerMenu;->mMenuPolicy:Lcom/oplus/splitscreen/DividerMenu$SplitMenuPolicy;

    if-eqz v1, :cond_7b

    invoke-interface {v1}, Lcom/oplus/splitscreen/DividerMenu$SplitMenuPolicy;->supportToggleDividerOrientation()Z

    move-result v1

    if-eqz v1, :cond_7b

    iget-object v1, p0, Lcom/oplus/splitscreen/DividerMenu;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/wm/shell/splitscreen/DividerOrientation;->isHorizontalDivision(Landroid/content/Context;)Z

    move-result v1

    new-instance v2, Lcom/coui/appcompat/poplist/PopupListItem;

    if-eqz v1, :cond_60

    sget v3, Lcom/android/wm/shell/R$drawable;->split_screen_switch_orientation_horizontal:I

    goto :goto_62

    :cond_60
    sget v3, Lcom/android/wm/shell/R$drawable;->split_screen_switch_orientation_vertical:I

    :goto_62
    iget-object v4, p0, Lcom/oplus/splitscreen/DividerMenu;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_69

    sget v1, Lcom/android/wm/shell/R$string;->oplus_split_screen_horizontal_orientation:I

    goto :goto_6b

    :cond_69
    sget v1, Lcom/android/wm/shell/R$string;->oplus_split_screen_vertical_orientation:I

    :goto_6b
    invoke-virtual {v4, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/oplus/splitscreen/DividerMenu;->mMenuPolicy:Lcom/oplus/splitscreen/DividerMenu$SplitMenuPolicy;

    invoke-interface {v4}, Lcom/oplus/splitscreen/DividerMenu$SplitMenuPolicy;->canToggleDividerOrientation()Z

    move-result v4

    invoke-direct {v2, v3, v1, v4}, Lcom/coui/appcompat/poplist/PopupListItem;-><init>(ILjava/lang/String;Z)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7b
    new-instance v1, Lcom/oplus/splitscreen/DividerMenuAdapter;

    iget-object v2, p0, Lcom/oplus/splitscreen/DividerMenu;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/oplus/splitscreen/DividerMenuAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iget-object p0, p0, Lcom/oplus/splitscreen/DividerMenu;->mDividerMenuPopup:Lcom/oplus/splitscreen/DividerMenuPopupListWindow;

    invoke-virtual {p0, v1}, Lcom/oplus/splitscreen/DividerMenuPopupListWindow;->setAdapter(Landroid/widget/BaseAdapter;)V

    return-void
.end method


# virtual methods
.method public hideMenuIfNeed()V
    .registers 3

    const-string v0, "DividerMenu"

    const-string v1, "hideMenuIfNeed"

    invoke-static {v0, v1}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/splitscreen/DividerMenu;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/oplus/splitscreen/DividerMenu;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/oplus/splitscreen/DividerMenu;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/oplus/splitscreen/DividerMenu;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object p0, p0, Lcom/oplus/splitscreen/DividerMenu;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/oplus/splitscreen/util/StackDividerStatisticUtils;->onSplitScreenMenuOperation(Landroid/content/Context;)V

    return-void
.end method

.method public notifyConfigurationChanged()V
    .registers 2

    iget-object v0, p0, Lcom/oplus/splitscreen/DividerMenu;->mDividerMenuPopup:Lcom/oplus/splitscreen/DividerMenuPopupListWindow;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lcom/oplus/splitscreen/DividerMenu;->hideMenuIfNeed()V

    :cond_d
    return-void
.end method

.method public onCloseSystemDialog()V
    .registers 1
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    invoke-virtual {p0}, Lcom/oplus/splitscreen/DividerMenu;->hideMenuIfNeed()V

    return-void
.end method

.method public onDisplayRotationChange(II)V
    .registers 3
    .annotation runtime Lcom/android/wm/shell/common/annotations/ShellMainThread;
    .end annotation

    return-void
.end method

.method public showMenuIfNeed()V
    .registers 4

    const-string v0, "DividerMenu"

    const-string v1, "showMenuIfNeed"

    invoke-static {v0, v1}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/splitscreen/DividerMenu;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/oplus/splitscreen/DividerMenu;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/oplus/splitscreen/DividerMenu;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/oplus/splitscreen/DividerMenu;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    invoke-static {}, Lcom/oplus/splitscreen/util/StackDividerStatisticUtils;->getSplitScreenMenuOperationInfo()Lcom/oplus/splitscreen/util/StackDividerStatisticUtils$SplitScreenMenuOperationInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/splitscreen/util/StackDividerStatisticUtils$SplitScreenMenuOperationInfo;->setOpenSplitMenuTriggered()V

    return-void
.end method
