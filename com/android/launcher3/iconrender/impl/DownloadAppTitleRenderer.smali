.class public Lcom/android/launcher3/iconrender/impl/DownloadAppTitleRenderer;
.super Lcom/android/launcher3/iconrender/AbstractTitleRenderer;
.source ""


# static fields
.field public static final PRIORITY:I = 0xb

.field private static final TAG:Ljava/lang/String; = "DownloadAppTitleRenderer"


# instance fields
.field private mEnableTextCrossFade:Z

.field private mSpannableString:Landroid/text/SpannableString;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mTextCrossFadeSpan:Lcom/android/launcher3/icons/span/TextCrossFadeSpan;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mTransitingToNormalState:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/launcher3/iconrender/RenderManager;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/iconrender/AbstractTitleRenderer;-><init>(Landroid/content/Context;Lcom/android/launcher3/iconrender/RenderManager;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/launcher3/iconrender/impl/DownloadAppTitleRenderer;->mEnableTextCrossFade:Z

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/iconrender/impl/DownloadAppTitleRenderer;Lcom/android/launcher3/BubbleTextView;Lcom/android/launcher3/iconrender/RenderManager;Ljava/lang/CharSequence;)Z
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/iconrender/impl/DownloadAppTitleRenderer;->lambda$accept$0(Lcom/android/launcher3/BubbleTextView;Lcom/android/launcher3/iconrender/RenderManager;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$accept$0(Lcom/android/launcher3/BubbleTextView;Lcom/android/launcher3/iconrender/RenderManager;Ljava/lang/CharSequence;)Z
    .registers 4

    const/4 p3, 0x0

    iput-boolean p3, p0, Lcom/android/launcher3/iconrender/impl/DownloadAppTitleRenderer;->mTransitingToNormalState:Z

    invoke-virtual {p0, p1}, Lcom/android/launcher3/iconrender/impl/DownloadAppTitleRenderer;->onViewReset(Lcom/android/launcher3/BubbleTextView;)V

    invoke-virtual {p2}, Lcom/android/launcher3/iconrender/RenderManager;->requestRenderTitle()V

    return p3
.end method

.method private processRenderParams(Lcom/android/launcher3/iconrender/TitleRenderParams;)V
    .registers 2

    iget-boolean p0, p0, Lcom/android/launcher3/iconrender/impl/DownloadAppTitleRenderer;->mTransitingToNormalState:Z

    if-eqz p0, :cond_9

    if-eqz p1, :cond_9

    const/4 p0, 0x1

    iput-boolean p0, p1, Lcom/android/launcher3/iconrender/TitleRenderParams;->mForceNotInterceptApplyLabel:Z

    :cond_9
    return-void
.end method


# virtual methods
.method public accept(Lcom/android/launcher3/iconrender/RenderManager;Landroid/content/Context;Lcom/android/launcher3/model/data/ItemInfoWithIcon;Lcom/android/launcher3/iconrender/TitleRenderParams;)Z
    .registers 11

    iget p2, p3, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p2, :cond_1e

    invoke-virtual {p3}, Lcom/android/launcher3/model/data/ItemInfo;->isNewInstallingOrUpgradingApp()Z

    move-result p2

    if-eqz p2, :cond_1e

    invoke-virtual {p3}, Lcom/android/launcher3/model/data/ItemInfo;->isNewInstallingOrUpgradingApp()Z

    move-result p2

    if-nez p2, :cond_1c

    invoke-static {}, Lcom/android/launcher/folder/download/FolderRecommendUtils;->getSInstance()Lcom/android/launcher/folder/download/FolderRecommendUtils;

    move-result-object p2

    invoke-virtual {p2, p3, v1}, Lcom/android/launcher/folder/download/FolderRecommendUtils;->isRecommendItemInfo(Lcom/android/launcher3/model/data/ItemInfoWithIcon;Z)Z

    move-result p2

    if-eqz p2, :cond_1e

    :cond_1c
    move p2, v1

    goto :goto_1f

    :cond_1e
    move p2, v0

    :goto_1f
    invoke-virtual {p0}, Lcom/android/launcher3/iconrender/impl/DownloadAppTitleRenderer;->isEnableTextCrossFade()Z

    move-result v2

    if-eqz v2, :cond_85

    invoke-virtual {p0}, Lcom/android/launcher3/iconrender/impl/DownloadAppTitleRenderer;->getTextCrossFadeSpan()Lcom/android/launcher3/icons/span/TextCrossFadeSpan;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/launcher3/iconrender/RenderManager;->getHostView()Lcom/android/launcher3/BubbleTextView;

    move-result-object v3

    if-nez p2, :cond_78

    iget-boolean v4, p4, Lcom/android/launcher3/iconrender/TitleRenderParams;->needDownloadAnimation:Z

    if-eqz v4, :cond_78

    if-eqz v2, :cond_78

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v4

    if-eqz v4, :cond_4c

    new-array v4, v1, [Ljava/lang/Object;

    aput-object p3, v4, v0

    const-string v0, "apply app label other.cross fade.info:%s"

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "InstallApp"

    const-string v5, "DownloadAppTitleRenderer"

    invoke-static {v4, v5, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4c
    iget-boolean v0, p0, Lcom/android/launcher3/iconrender/impl/DownloadAppTitleRenderer;->mTransitingToNormalState:Z

    if-nez v0, :cond_6f

    iget-object v0, p3, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6f

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    iget-object p3, p3, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-static {v0, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_6f

    iput-boolean v1, p0, Lcom/android/launcher3/iconrender/impl/DownloadAppTitleRenderer;->mTransitingToNormalState:Z

    new-instance p2, Lcom/android/launcher3/iconrender/impl/a;

    invoke-direct {p2, p0, v3, p1}, Lcom/android/launcher3/iconrender/impl/a;-><init>(Lcom/android/launcher3/iconrender/impl/DownloadAppTitleRenderer;Lcom/android/launcher3/BubbleTextView;Lcom/android/launcher3/iconrender/RenderManager;)V

    invoke-virtual {v2, p2}, Lcom/android/launcher3/icons/span/TextCrossFadeSpan;->addAnimationListener(Lcom/android/launcher3/icons/span/TextCrossFadeSpan$IAnimationListener;)V

    goto :goto_7b

    :cond_6f
    iget-boolean p3, p0, Lcom/android/launcher3/iconrender/impl/DownloadAppTitleRenderer;->mTransitingToNormalState:Z

    if-eqz p3, :cond_7a

    invoke-virtual {v2}, Lcom/android/launcher3/icons/span/TextCrossFadeSpan;->isRunning()Z

    move-result v1

    goto :goto_7b

    :cond_78
    iput-boolean v0, p0, Lcom/android/launcher3/iconrender/impl/DownloadAppTitleRenderer;->mTransitingToNormalState:Z

    :cond_7a
    move v1, p2

    :goto_7b
    if-nez v1, :cond_84

    invoke-virtual {p1}, Lcom/android/launcher3/iconrender/RenderManager;->getHostView()Lcom/android/launcher3/BubbleTextView;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/iconrender/impl/DownloadAppTitleRenderer;->onViewReset(Lcom/android/launcher3/BubbleTextView;)V

    :cond_84
    move p2, v1

    :cond_85
    if-eqz p2, :cond_8a

    invoke-direct {p0, p4}, Lcom/android/launcher3/iconrender/impl/DownloadAppTitleRenderer;->processRenderParams(Lcom/android/launcher3/iconrender/TitleRenderParams;)V

    :cond_8a
    return p2
.end method

.method public beforeTextViewOnMeasure(Lcom/android/launcher3/BubbleTextView;II)V
    .registers 4

    invoke-super {p0, p1, p2, p3}, Lcom/android/launcher3/iconrender/AbstractRenderer;->beforeTextViewOnMeasure(Lcom/android/launcher3/BubbleTextView;II)V

    iget-object p3, p0, Lcom/android/launcher3/iconrender/impl/DownloadAppTitleRenderer;->mTextCrossFadeSpan:Lcom/android/launcher3/icons/span/TextCrossFadeSpan;

    if-eqz p3, :cond_10

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    iget-object p0, p0, Lcom/android/launcher3/iconrender/impl/DownloadAppTitleRenderer;->mTextCrossFadeSpan:Lcom/android/launcher3/icons/span/TextCrossFadeSpan;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/icons/span/TextCrossFadeSpan;->setMeasuredTextViewWidth(Lcom/android/launcher3/BubbleTextView;I)V

    :cond_10
    return-void
.end method

.method public getDownloadTitle(Landroid/content/Context;I)Ljava/lang/String;
    .registers 3

    invoke-static {p1, p2}, Lcom/android/launcher/download/DownloadAppUtils;->getDownloadAppTitle(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTextCrossFadeSpan()Lcom/android/launcher3/icons/span/TextCrossFadeSpan;
    .registers 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/android/launcher3/iconrender/impl/DownloadAppTitleRenderer;->mTextCrossFadeSpan:Lcom/android/launcher3/icons/span/TextCrossFadeSpan;

    return-object p0
.end method

.method public isEnableTextCrossFade()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/iconrender/impl/DownloadAppTitleRenderer;->mEnableTextCrossFade:Z

    return p0
.end method

.method public isTransitingToNormalState()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/iconrender/impl/DownloadAppTitleRenderer;->mTransitingToNormalState:Z

    return p0
.end method

.method public onViewReset(Lcom/android/launcher3/BubbleTextView;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/android/launcher3/iconrender/AbstractRenderer;->onViewReset(Lcom/android/launcher3/BubbleTextView;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/launcher3/iconrender/impl/DownloadAppTitleRenderer;->mTextCrossFadeSpan:Lcom/android/launcher3/icons/span/TextCrossFadeSpan;

    iput-object p1, p0, Lcom/android/launcher3/iconrender/impl/DownloadAppTitleRenderer;->mSpannableString:Landroid/text/SpannableString;

    return-void
.end method

.method public priority()I
    .registers 1

    const/16 p0, 0xb

    return p0
.end method

.method public renderInner(Lcom/android/launcher3/iconrender/TitleRenderResult;Landroid/widget/TextView;Ljava/lang/CharSequence;Lcom/android/launcher3/iconrender/TitleRenderParams;)V
    .registers 11
    .param p1  # Lcom/android/launcher3/iconrender/TitleRenderResult;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/android/launcher3/iconrender/impl/DownloadAppTitleRenderer;->isEnableTextCrossFade()Z

    move-result v0

    if-eqz v0, :cond_8f

    iget-object v0, p0, Lcom/android/launcher3/iconrender/impl/DownloadAppTitleRenderer;->mTextCrossFadeSpan:Lcom/android/launcher3/icons/span/TextCrossFadeSpan;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_15

    new-instance v0, Lcom/android/launcher3/icons/span/TextCrossFadeSpan;

    invoke-direct {v0, p2}, Lcom/android/launcher3/icons/span/TextCrossFadeSpan;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Lcom/android/launcher3/iconrender/impl/DownloadAppTitleRenderer;->mTextCrossFadeSpan:Lcom/android/launcher3/icons/span/TextCrossFadeSpan;

    move v0, v1

    goto :goto_16

    :cond_15
    move v0, v2

    :goto_16
    invoke-virtual {p0}, Lcom/android/launcher3/iconrender/impl/DownloadAppTitleRenderer;->isTransitingToNormalState()Z

    move-result v3

    invoke-virtual {p0}, Lcom/android/launcher3/iconrender/AbstractRenderer;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p4, Lcom/android/launcher3/iconrender/TitleRenderParams;->mItemInfo:Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    iget-object v5, v5, Lcom/android/launcher3/model/data/ItemInfo;->mInstallState:Lcom/android/launcher/download/InstallState;

    invoke-virtual {v5}, Lcom/android/launcher/download/InstallState;->getInstallState()I

    move-result v5

    invoke-virtual {p0, v4, v5}, Lcom/android/launcher3/iconrender/impl/DownloadAppTitleRenderer;->getDownloadTitle(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_33

    move-object v4, p3

    :cond_33
    if-nez v3, :cond_36

    move-object p3, v4

    :cond_36
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v3

    if-eqz v3, :cond_63

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p3, v3, v2

    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v4, 0x2

    iget-object v5, p4, Lcom/android/launcher3/iconrender/TitleRenderParams;->mItemInfo:Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    aput-object v5, v3, v4

    const/4 v4, 0x3

    iget-boolean p4, p4, Lcom/android/launcher3/iconrender/TitleRenderParams;->mIsInvisible:Z

    xor-int/2addr p4, v1

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p4

    aput-object p4, v3, v4

    const-string p4, "isNewInstallingOrUpgradingApp show download label,downloadTitle=%s,curText=%s,item=%s,visible=%s"

    invoke-static {p4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    const-string v3, "InstallApp"

    const-string v4, "DownloadAppTitleRenderer"

    invoke-static {v3, v4, p4}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_63
    if-nez v0, :cond_77

    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-static {p2, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_77

    iget-object p2, p0, Lcom/android/launcher3/iconrender/impl/DownloadAppTitleRenderer;->mSpannableString:Landroid/text/SpannableString;

    if-nez p2, :cond_74

    goto :goto_77

    :cond_74
    iput-boolean v1, p1, Lcom/android/launcher3/iconrender/TitleRenderResult;->interceptApplyLabel:Z

    goto :goto_8a

    :cond_77
    :goto_77
    invoke-static {p3}, Landroid/text/SpannableString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object p2

    iput-object p2, p0, Lcom/android/launcher3/iconrender/impl/DownloadAppTitleRenderer;->mSpannableString:Landroid/text/SpannableString;

    iget-object p4, p0, Lcom/android/launcher3/iconrender/impl/DownloadAppTitleRenderer;->mTextCrossFadeSpan:Lcom/android/launcher3/icons/span/TextCrossFadeSpan;

    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result p3

    const/16 v0, 0x21

    invoke-virtual {p2, p4, v2, p3, v0}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    iput-boolean v2, p1, Lcom/android/launcher3/iconrender/TitleRenderResult;->interceptApplyLabel:Z

    :goto_8a
    iget-object p0, p0, Lcom/android/launcher3/iconrender/impl/DownloadAppTitleRenderer;->mSpannableString:Landroid/text/SpannableString;

    iput-object p0, p1, Lcom/android/launcher3/iconrender/TitleRenderResult;->mResult:Ljava/lang/CharSequence;

    goto :goto_a1

    :cond_8f
    invoke-virtual {p0}, Lcom/android/launcher3/iconrender/AbstractRenderer;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-object p3, p4, Lcom/android/launcher3/iconrender/TitleRenderParams;->mItemInfo:Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    iget-object p3, p3, Lcom/android/launcher3/model/data/ItemInfo;->mInstallState:Lcom/android/launcher/download/InstallState;

    invoke-virtual {p3}, Lcom/android/launcher/download/InstallState;->getInstallState()I

    move-result p3

    invoke-virtual {p0, p2, p3}, Lcom/android/launcher3/iconrender/impl/DownloadAppTitleRenderer;->getDownloadTitle(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/android/launcher3/iconrender/TitleRenderResult;->mResult:Ljava/lang/CharSequence;

    :goto_a1
    return-void
.end method

.method public setEnableTextCrossFade(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher3/iconrender/impl/DownloadAppTitleRenderer;->mEnableTextCrossFade:Z

    return-void
.end method
