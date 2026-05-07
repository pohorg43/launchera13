.class public Lcom/oplus/splitscreen/SplitScreenFingerGuideDialog;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/content/DialogInterface$OnKeyListener;


# static fields
.field private static final KEY_DIALOG_DISABLE:Ljava/lang/String; = "split_screen_finger_guide_dialog_disabled"

.field private static final SPLIT_SCREEN_GUIDE_FINGER:Ljava/lang/String; = "split_screen_setting_guide_finger.json"

.field public static final STATUS_HAS_SHOW:I = 0x2

.field public static final STATUS_IDLE:I = 0x0

.field public static final STATUS_RE_SHOW:I = 0x3

.field public static final STATUS_SHOW:I = 0x1

.field private static final TAG:Ljava/lang/String;

.field private static final UI_MODE_DARK_DIR:Ljava/lang/String; = "split_screen_dark"

.field private static final UI_MODE_NORMAL_DIR:Ljava/lang/String; = "split_screen_normal"


# instance fields
.field private mBottomSheetDialog:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

.field private mContext:Landroid/content/Context;

.field private mNightMode:Z

.field private mSplitScreenGuideManager:Lcom/oplus/splitscreen/SplitScreenGuideManager;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/oplus/splitscreen/SplitScreenGuideManager;->TAG:Ljava/lang/String;

    const-string v2, "_finger"

    invoke-static {v0, v1, v2}, Landroidx/concurrent/futures/b;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oplus/splitscreen/SplitScreenFingerGuideDialog;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/oplus/splitscreen/SplitScreenGuideManager;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oplus/splitscreen/SplitScreenFingerGuideDialog;->mSplitScreenGuideManager:Lcom/oplus/splitscreen/SplitScreenGuideManager;

    iput-object v0, p0, Lcom/oplus/splitscreen/SplitScreenFingerGuideDialog;->mBottomSheetDialog:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    iput-object v0, p0, Lcom/oplus/splitscreen/SplitScreenFingerGuideDialog;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/oplus/splitscreen/SplitScreenFingerGuideDialog;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/oplus/splitscreen/SplitScreenFingerGuideDialog;->mSplitScreenGuideManager:Lcom/oplus/splitscreen/SplitScreenGuideManager;

    return-void
.end method

.method private createGuideDialogAndShow()V
    .registers 5

    sget-object v0, Lcom/oplus/splitscreen/SplitScreenFingerGuideDialog;->TAG:Ljava/lang/String;

    const-string v1, "createGuideDialogAndShow() "

    invoke-static {v0, v1}, Lcom/oplus/splitscreen/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/splitscreen/SplitScreenFingerGuideDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oplus/splitscreen/SplitScreenFingerGuideDialog;->isDarkMode(Landroid/content/res/Configuration;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/oplus/splitscreen/SplitScreenFingerGuideDialog;->mNightMode:Z

    if-eqz v0, :cond_1c

    sget v0, Lcom/android/wm/shell/R$style;->Theme_COUI_Main_Dark:I

    goto :goto_1e

    :cond_1c
    sget v0, Lcom/android/wm/shell/R$style;->Theme_COUI_Main:I

    :goto_1e
    new-instance v1, Landroidx/appcompat/view/ContextThemeWrapper;

    iget-object v2, p0, Lcom/oplus/splitscreen/SplitScreenFingerGuideDialog;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Landroidx/appcompat/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-static {}, Lcom/coui/appcompat/theme/COUIThemeOverlay;->d()Lcom/coui/appcompat/theme/COUIThemeOverlay;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/theme/COUIThemeOverlay;->a(Landroid/content/Context;)V

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v2, Lcom/android/wm/shell/R$layout;->split_screen_finger_guide_dialog:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    sget v3, Lcom/android/wm/shell/R$style;->DefaultBottomSheetDialog:I

    invoke-direct {v2, v1, v3}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/oplus/splitscreen/SplitScreenFingerGuideDialog;->mBottomSheetDialog:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    const-string v3, "SplitScreenFingerGuideDialog"

    invoke-virtual {v2, v3}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v3, v3, 0x10

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/16 v3, 0x7d8

    invoke-virtual {v1, v3}, Landroid/view/Window;->setType(I)V

    invoke-virtual {v1, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    iget-object v1, p0, Lcom/oplus/splitscreen/SplitScreenFingerGuideDialog;->mBottomSheetDialog:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    invoke-virtual {v1, v0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->setContentView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/oplus/splitscreen/SplitScreenFingerGuideDialog;->mBottomSheetDialog:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->setCanceledOnTouchOutside(Z)V

    sget v1, Lcom/android/wm/shell/R$id;->guide_dialog_button:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/oplus/splitscreen/SplitScreenFingerGuideDialog;->mBottomSheetDialog:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    invoke-virtual {v1, p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->u(Landroid/view/View$OnTouchListener;)V

    iget-object v1, p0, Lcom/oplus/splitscreen/SplitScreenFingerGuideDialog;->mBottomSheetDialog:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    invoke-virtual {v1, p0}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    iget-object v1, p0, Lcom/oplus/splitscreen/SplitScreenFingerGuideDialog;->mBottomSheetDialog:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    iget-object v1, v1, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->f:Lcom/coui/appcompat/panel/COUIPanelContentLayout;

    if-eqz v1, :cond_8c

    invoke-virtual {v1}, Lcom/coui/appcompat/panel/COUIPanelContentLayout;->getDragView()Landroid/widget/ImageView;

    move-result-object v1

    if-eqz v1, :cond_8c

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_8c
    iget-boolean v1, p0, Lcom/oplus/splitscreen/SplitScreenFingerGuideDialog;->mNightMode:Z

    invoke-direct {p0, v0, v1}, Lcom/oplus/splitscreen/SplitScreenFingerGuideDialog;->initGuideAnimate(Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/oplus/splitscreen/SplitScreenFingerGuideDialog;->mSplitScreenGuideManager:Lcom/oplus/splitscreen/SplitScreenGuideManager;

    invoke-virtual {v0}, Lcom/oplus/splitscreen/SplitScreenGuideManager;->registerObserver()V

    iget-object v0, p0, Lcom/oplus/splitscreen/SplitScreenFingerGuideDialog;->mBottomSheetDialog:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    invoke-virtual {p0}, Lcom/oplus/splitscreen/SplitScreenFingerGuideDialog;->disabled()V

    return-void
.end method

.method private initGuideAnimate(Landroid/view/View;Z)V
    .registers 3

    if-eqz p2, :cond_5

    const-string p0, "split_screen_dark/split_screen_setting_guide_finger.json"

    goto :goto_7

    :cond_5
    const-string p0, "split_screen_normal/split_screen_setting_guide_finger.json"

    :goto_7
    sget p2, Lcom/android/wm/shell/R$id;->guide_dialog_animate:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/oplus/anim/EffectiveAnimationView;

    invoke-virtual {p1, p0}, Lcom/oplus/anim/EffectiveAnimationView;->setAnimation(Ljava/lang/String;)V

    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Lcom/oplus/anim/EffectiveAnimationView;->setRepeatMode(I)V

    const/4 p0, -0x1

    invoke-virtual {p1, p0}, Lcom/oplus/anim/EffectiveAnimationView;->setRepeatCount(I)V

    invoke-virtual {p1}, Lcom/oplus/anim/EffectiveAnimationView;->playAnimation()V

    return-void
.end method

.method private isDarkMode(Landroid/content/res/Configuration;)Z
    .registers 2

    iget p0, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p0, p0, 0x30

    const/16 p1, 0x20

    if-ne p0, p1, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method


# virtual methods
.method public disabled()V
    .registers 3

    iget-object p0, p0, Lcom/oplus/splitscreen/SplitScreenFingerGuideDialog;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/oplus/splitscreen/util/StackDividerSharedPreferenceHelper;->getInstance(Landroid/content/Context;)Lcom/oplus/splitscreen/util/StackDividerSharedPreferenceHelper;

    move-result-object p0

    const-string v0, "split_screen_finger_guide_dialog_disabled"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/oplus/splitscreen/util/StackDividerSharedPreferenceHelper;->putBooleanPref(Ljava/lang/String;Z)V

    return-void
.end method

.method public dismissDialog(Ljava/lang/String;)V
    .registers 5

    sget-object v0, Lcom/oplus/splitscreen/SplitScreenFingerGuideDialog;->TAG:Ljava/lang/String;

    const-string v1, "dismissDialog   reason="

    const-string v2, ",dialog="

    invoke-static {v1, p1, v2}, Landroidx/activity/result/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v1, p0, Lcom/oplus/splitscreen/SplitScreenFingerGuideDialog;->mBottomSheetDialog:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/oplus/splitscreen/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/oplus/splitscreen/SplitScreenFingerGuideDialog;->mBottomSheetDialog:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    if-eqz p1, :cond_2f

    invoke-virtual {p1}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->dismiss()V

    iget-object p1, p0, Lcom/oplus/splitscreen/SplitScreenFingerGuideDialog;->mBottomSheetDialog:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->u(Landroid/view/View$OnTouchListener;)V

    iget-object p1, p0, Lcom/oplus/splitscreen/SplitScreenFingerGuideDialog;->mBottomSheetDialog:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    iget-object p1, p0, Lcom/oplus/splitscreen/SplitScreenFingerGuideDialog;->mSplitScreenGuideManager:Lcom/oplus/splitscreen/SplitScreenGuideManager;

    invoke-virtual {p1}, Lcom/oplus/splitscreen/SplitScreenGuideManager;->unRegisterObserver()V

    iput-object v0, p0, Lcom/oplus/splitscreen/SplitScreenFingerGuideDialog;->mBottomSheetDialog:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    :cond_2f
    return-void
.end method

.method public handleConfigChange(Landroid/content/res/Configuration;)V
    .registers 6

    iget-object v0, p0, Lcom/oplus/splitscreen/SplitScreenFingerGuideDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oplus/splitscreen/SplitScreenFingerGuideDialog;->isDarkMode(Landroid/content/res/Configuration;)Z

    move-result v0

    sget-object v1, Lcom/oplus/splitscreen/SplitScreenFingerGuideDialog;->TAG:Ljava/lang/String;

    const-string v2, "handleConfigChange    new="

    const-string v3, ",old="

    invoke-static {v2, v0, v3}, Landroidx/slice/widget/a;->a(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/oplus/splitscreen/SplitScreenFingerGuideDialog;->mNightMode:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ",dialog="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oplus/splitscreen/SplitScreenFingerGuideDialog;->mBottomSheetDialog:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ",config="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/oplus/splitscreen/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/oplus/splitscreen/SplitScreenFingerGuideDialog;->mBottomSheetDialog:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    if-eqz p1, :cond_46

    iget-boolean p1, p0, Lcom/oplus/splitscreen/SplitScreenFingerGuideDialog;->mNightMode:Z

    if-eq v0, p1, :cond_46

    const-string p1, "DarkModeChange"

    invoke-virtual {p0, p1}, Lcom/oplus/splitscreen/SplitScreenFingerGuideDialog;->dismissDialog(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/oplus/splitscreen/SplitScreenFingerGuideDialog;->createGuideDialogAndShow()V

    :cond_46
    return-void
.end method

.method public hasDisabled()Z
    .registers 3

    iget-object p0, p0, Lcom/oplus/splitscreen/SplitScreenFingerGuideDialog;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/oplus/splitscreen/util/StackDividerSharedPreferenceHelper;->getInstance(Landroid/content/Context;)Lcom/oplus/splitscreen/util/StackDividerSharedPreferenceHelper;

    move-result-object p0

    const-string v0, "split_screen_finger_guide_dialog_disabled"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/oplus/splitscreen/util/StackDividerSharedPreferenceHelper;->getBooleanPref(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public onClick(Landroid/view/View;)V
    .registers 2

    const-string p1, "onClick"

    invoke-virtual {p0, p1}, Lcom/oplus/splitscreen/SplitScreenFingerGuideDialog;->dismissDialog(Ljava/lang/String;)V

    return-void
.end method

.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 4

    const/4 p1, 0x4

    if-ne p2, p1, :cond_8

    const-string p1, "KEYCODE_BACK"

    invoke-virtual {p0, p1}, Lcom/oplus/splitscreen/SplitScreenFingerGuideDialog;->dismissDialog(Ljava/lang/String;)V

    :cond_8
    const/4 p0, 0x1

    return p0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 3

    const-string p1, "onOutSideTouch"

    invoke-virtual {p0, p1}, Lcom/oplus/splitscreen/SplitScreenFingerGuideDialog;->dismissDialog(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method public showGuideDialog()I
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/oplus/splitscreen/SplitScreenFingerGuideDialog;->mBottomSheetDialog:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    if-nez v0, :cond_9

    invoke-direct {p0}, Lcom/oplus/splitscreen/SplitScreenFingerGuideDialog;->createGuideDialogAndShow()V

    const/4 p0, 0x1

    goto :goto_24

    :cond_9
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_11

    const/4 p0, 0x2

    goto :goto_24

    :cond_11
    iget-object p0, p0, Lcom/oplus/splitscreen/SplitScreenFingerGuideDialog;->mBottomSheetDialog:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_16} :catch_18

    const/4 p0, 0x3

    goto :goto_24

    :catch_18
    move-exception p0

    sget-object v0, Lcom/oplus/splitscreen/SplitScreenFingerGuideDialog;->TAG:Ljava/lang/String;

    const-string v1, "showDialog failed !"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    :goto_24
    sget-object v0, Lcom/oplus/splitscreen/SplitScreenFingerGuideDialog;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showGuideDialog status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oplus/splitscreen/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return p0
.end method
