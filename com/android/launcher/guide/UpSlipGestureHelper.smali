.class public Lcom/android/launcher/guide/UpSlipGestureHelper;
.super Lcom/android/launcher/guide/BaseNavGesturesHelper;
.source ""


# static fields
.field private static final SETTINGS_GESTURE_KEYS_MODE:Ljava/lang/String; = "settings_gesture_keys_mode"

.field private static final TAG:Ljava/lang/String; = "UpSlipGesturesHelper"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher/guide/BaseNavGesturesHelper;-><init>()V

    return-void
.end method


# virtual methods
.method public createGuideView(Lcom/android/launcher/Launcher;)Lcom/android/launcher/guide/SlideSlipGuidePage;
    .registers 5

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0d0100

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/launcher/guide/SlideSlipGuidePage;

    iput-object p1, p0, Lcom/android/launcher/guide/BaseNavGesturesHelper;->mGuideView:Lcom/android/launcher/guide/SlideSlipGuidePage;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/launcher/guide/SlideSlipGuidePage;->initViews(I)V

    iget-object p0, p0, Lcom/android/launcher/guide/BaseNavGesturesHelper;->mGuideView:Lcom/android/launcher/guide/SlideSlipGuidePage;

    return-object p0
.end method

.method public onGuideShowing(Lcom/android/launcher/Launcher;)V
    .registers 5

    const-string p0, "UpSlipGesturesHelper"

    if-nez p1, :cond_b

    const-string/jumbo p1, "onGuideShowing: launcher is null!"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_b
    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "hide_navigationbar_enable"

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v0, "settings_gesture_keys_mode"

    invoke-static {p1, v0, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string/jumbo p1, "setSecureIntValue key = hide_navigationbar_enable; defaultValue = 2"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
