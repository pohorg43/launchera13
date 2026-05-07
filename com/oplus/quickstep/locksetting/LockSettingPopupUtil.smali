.class public Lcom/oplus/quickstep/locksetting/LockSettingPopupUtil;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final POP_WIN_DISMISS_DELAY:J = 0xbb8L

.field private static final TAG:Ljava/lang/String; = "LockSettingPopupUtil"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Landroid/widget/PopupWindow;Landroid/view/View;IIIIIIII)V
    .registers 10

    invoke-static/range {p0 .. p9}, Lcom/oplus/quickstep/locksetting/LockSettingPopupUtil;->lambda$show$1(Landroid/widget/PopupWindow;Landroid/view/View;IIIIIIII)V

    return-void
.end method

.method public static synthetic b(Landroid/content/Context;Landroid/widget/PopupWindow;Landroid/view/View;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/oplus/quickstep/locksetting/LockSettingPopupUtil;->lambda$show$0(Landroid/content/Context;Landroid/widget/PopupWindow;Landroid/view/View;)V

    return-void
.end method

.method private static dismissPopup(Landroid/widget/PopupWindow;)V
    .registers 2

    if-eqz p0, :cond_b

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_b
    return-void
.end method

.method private static synthetic lambda$show$0(Landroid/content/Context;Landroid/widget/PopupWindow;Landroid/view/View;)V
    .registers 3

    invoke-static {p0}, Lcom/oplus/quickstep/locksetting/ui/LockSettingActivity;->newIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    invoke-static {p1}, Lcom/oplus/quickstep/locksetting/LockSettingPopupUtil;->dismissPopup(Landroid/widget/PopupWindow;)V

    return-void
.end method

.method private static synthetic lambda$show$1(Landroid/widget/PopupWindow;Landroid/view/View;IIIIIIII)V
    .registers 10

    invoke-static {p0}, Lcom/oplus/quickstep/locksetting/LockSettingPopupUtil;->dismissPopup(Landroid/widget/PopupWindow;)V

    const-string p0, "LockSettingPopupUtil"

    const-string p1, "onLayoutChange"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static show(Landroid/content/Context;Landroid/view/View;)V
    .registers 10

    if-eqz p0, :cond_87

    if-nez p1, :cond_6

    goto/16 :goto_87

    :cond_6
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f0d017e

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a0579

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0401f0

    invoke-static {p0, v2, v3}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->b(Landroid/content/Context;II)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3f

    const v4, 0x7f070260

    goto :goto_42

    :cond_3f
    const v4, 0x7f070261

    :goto_42
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    new-instance v6, Landroid/widget/PopupWindow;

    const/4 v7, -0x2

    invoke-direct {v6, v0, v7, v7, v5}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    const v0, 0x7f070264

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {v6, v0}, Landroid/widget/PopupWindow;->setWidth(I)V

    const-string v0, "LockSettingPopupUtil"

    const-string v2, "show(), popupWindow window ready add."

    invoke-static {v0, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x51

    invoke-virtual {v6, p1, v0, v3, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    new-instance v0, Lcom/android/launcher/touch/b;

    invoke-direct {v0, p0, v6}, Lcom/android/launcher/touch/b;-><init>(Landroid/content/Context;Landroid/widget/PopupWindow;)V

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p0, Lcom/oplus/quickstep/common/observers/a;

    invoke-direct {p0, v6}, Lcom/oplus/quickstep/common/observers/a;-><init>(Landroid/widget/PopupWindow;)V

    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    new-instance p0, Lcom/android/wm/shell/bubbles/g0;

    invoke-direct {p0, v6}, Lcom/android/wm/shell/bubbles/g0;-><init>(Landroid/widget/PopupWindow;)V

    invoke-virtual {p1, p0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_87
    :goto_87
    return-void
.end method
