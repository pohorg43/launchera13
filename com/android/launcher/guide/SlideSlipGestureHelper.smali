.class public Lcom/android/launcher/guide/SlideSlipGestureHelper;
.super Lcom/android/launcher/guide/BaseNavGesturesHelper;
.source ""


# static fields
.field private static final SETTINGS_GESTURE_KEYS_MODE:Ljava/lang/String; = "settings_gesture_keys_mode"

.field private static final SLID_GESTURE:I = 0x3

.field private static final TAG:Ljava/lang/String; = "SlidSlipGesturesHelper"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher/guide/BaseNavGesturesHelper;-><init>()V

    return-void
.end method

.method public static synthetic c(Lcom/android/launcher/guide/SlideSlipGestureHelper;Lcom/android/launcher/Launcher;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher/guide/SlideSlipGestureHelper;->lambda$showGuidePage$0(Lcom/android/launcher/Launcher;)V

    return-void
.end method

.method private synthetic lambda$showGuidePage$0(Lcom/android/launcher/Launcher;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/launcher/guide/BaseNavGesturesHelper;->showGuidePageInner(Lcom/android/launcher/Launcher;)V

    return-void
.end method


# virtual methods
.method public configView(Lcom/android/launcher/Launcher;)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher/guide/BaseNavGesturesHelper;->mParams:Landroid/view/WindowManager$LayoutParams;

    const/16 p1, 0x402

    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    return-void
.end method

.method public createGuideView(Lcom/android/launcher/Launcher;)Lcom/android/launcher/guide/SlideSlipGuidePage;
    .registers 5

    const-string/jumbo v0, "window"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/launcher/guide/BaseNavGesturesHelper;->mWindowManager:Landroid/view/WindowManager;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0d0100

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/launcher/guide/SlideSlipGuidePage;

    iput-object p1, p0, Lcom/android/launcher/guide/BaseNavGesturesHelper;->mGuideView:Lcom/android/launcher/guide/SlideSlipGuidePage;

    invoke-virtual {p1, v2}, Lcom/android/launcher/guide/SlideSlipGuidePage;->initViews(I)V

    iget-object p0, p0, Lcom/android/launcher/guide/BaseNavGesturesHelper;->mGuideView:Lcom/android/launcher/guide/SlideSlipGuidePage;

    return-object p0
.end method

.method public onGuideShowing(Lcom/android/launcher/Launcher;)V
    .registers 5

    const-string p0, "SlidSlipGesturesHelper"

    if-nez p1, :cond_a

    const-string p1, "enableSettingNavigationGestures -- mLauncher is null!"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_a
    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x3

    const-string v2, "hide_navigationbar_enable"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v0, " onGuideShowing SecureSettings putInt hide_navigationbar_enable SLID_GESTURE"

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 p1, 0x2

    const-string/jumbo v0, "settings_gesture_keys_mode"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public onPause()V
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/guide/BaseNavGesturesHelper;->mGuideView:Lcom/android/launcher/guide/SlideSlipGuidePage;

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Lcom/android/launcher/guide/SlideSlipGuidePage;->onPause()V

    :cond_7
    return-void
.end method

.method public onResume()V
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/guide/BaseNavGesturesHelper;->mGuideView:Lcom/android/launcher/guide/SlideSlipGuidePage;

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Lcom/android/launcher/guide/SlideSlipGuidePage;->onResume()V

    :cond_7
    return-void
.end method

.method public showGuidePage(Lcom/android/launcher/Launcher;)V
    .registers 3

    new-instance v0, Lcom/android/launcher/guide/c;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher/guide/c;-><init>(Lcom/android/launcher/guide/SlideSlipGestureHelper;Lcom/android/launcher/Launcher;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
