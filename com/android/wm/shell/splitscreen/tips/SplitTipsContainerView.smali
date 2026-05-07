.class public Lcom/android/wm/shell/splitscreen/tips/SplitTipsContainerView;
.super Landroid/widget/FrameLayout;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String; = "TipsContainerView"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mTipsManager:Lcom/android/wm/shell/splitscreen/tips/SplitTipsManager;

.field private mTipsView:Landroid/widget/FrameLayout;

.field private mWindowParams:Landroid/view/WindowManager$LayoutParams;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/tips/SplitTipsContainerView;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/splitscreen/tips/SplitTipsContainerView;->inflate(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/tips/SplitTipsContainerView;->initLayoutParam()V

    return-void
.end method


# virtual methods
.method public getTipsView()Landroid/widget/FrameLayout;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/tips/SplitTipsContainerView;->mTipsView:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method public getView()Landroid/view/View;
    .registers 1

    return-object p0
.end method

.method public getWindowParams()Landroid/view/WindowManager$LayoutParams;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/tips/SplitTipsContainerView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    return-object p0
.end method

.method public inflate(Landroid/content/Context;)V
    .registers 3

    sget v0, Lcom/android/wm/shell/R$layout;->split_tips_container:I

    invoke-static {p1, v0, p0}, Landroid/widget/FrameLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    sget p1, Lcom/android/wm/shell/R$id;->tips_base_pixel:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/tips/SplitTipsContainerView;->mTipsView:Landroid/widget/FrameLayout;

    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/tips/SplitTipsContainerView;->mTipsView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {}, Lcom/oplus/splitscreen/util/SplitScreenUtils;->isLayoutDirectionRtl()Z

    move-result v0

    if-eqz v0, :cond_24

    const v0, 0x800005

    goto :goto_27

    :cond_24
    const v0, 0x800003

    :goto_27
    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/tips/SplitTipsContainerView;->mTipsView:Landroid/widget/FrameLayout;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public initLayoutParam()V
    .registers 3

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x7f6

    invoke-direct {v0, v1}, Landroid/view/WindowManager$LayoutParams;-><init>(I)V

    iput-object v0, p0, Lcom/android/wm/shell/splitscreen/tips/SplitTipsContainerView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget p0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v1, 0x1000118

    or-int/2addr p0, v1

    iput p0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/4 p0, 0x1

    iput p0, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    iget p0, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 p0, p0, 0x10

    iput p0, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const-string p0, "SplitTipsContainer"

    invoke-virtual {v0, p0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onAttachedToWindow()V
    .registers 3

    const-string v0, "TipsContainerView"

    const-string v1, "onAttachedWindow"

    invoke-static {v0, v1}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/tips/SplitTipsContainerView;->mTipsManager:Lcom/android/wm/shell/splitscreen/tips/SplitTipsManager;

    if-eqz p0, :cond_11

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/tips/SplitTipsManager;->onAttachedToWindow()V

    :cond_11
    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 2

    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/tips/SplitTipsContainerView;->mTipsManager:Lcom/android/wm/shell/splitscreen/tips/SplitTipsManager;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/tips/SplitTipsManager;->onDetachedFromWindow()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/wm/shell/splitscreen/tips/SplitTipsContainerView;->mTipsManager:Lcom/android/wm/shell/splitscreen/tips/SplitTipsManager;

    :cond_d
    return-void
.end method

.method public setTipsManager(Lcom/android/wm/shell/splitscreen/tips/SplitTipsManager;)V
    .registers 2

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/tips/SplitTipsContainerView;->mTipsManager:Lcom/android/wm/shell/splitscreen/tips/SplitTipsManager;

    return-void
.end method
