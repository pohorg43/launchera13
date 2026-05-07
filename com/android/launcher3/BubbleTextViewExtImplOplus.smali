.class public Lcom/android/launcher3/BubbleTextViewExtImplOplus;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/IBubbleTextViewExt;
.implements Lcom/oplus/ext/core/IExtCreator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/launcher3/IBubbleTextViewExt;",
        "Lcom/oplus/ext/core/IExtCreator<",
        "Lcom/android/launcher3/IBubbleTextViewExt;",
        ">;"
    }
.end annotation


# static fields
.field public static final DISPLAY_HOT_SEAT:I = 0x8

.field public static final DISPLAY_SUPPER_POWER_WORKSPACE:I = 0x9

.field public static final DISPLAY_WIDGET_SHEET:I = 0x3

.field private static final FLAGS_PRESSED:I = 0x4000

.field private static final MAX_PROGRESS:I = 0x64

.field private static final ONE_HUNDREDTH:F = 0.01f

.field private static final PRE_PRESSED:I = 0x2000000

.field private static final TAG:Ljava/lang/String; = "BubbleTextViewExtImplOplus"


# instance fields
.field private mBubbleTextViewWrapper:Lcom/android/launcher3/IBubbleTextViewWrapper;

.field private mDotScaleAnimCallBack:Ljava/lang/Runnable;

.field private mHostView:Lcom/android/launcher3/BubbleTextView;

.field private mIconAnimators:Lcom/android/launcher3/icons/anim/IIconAnimators;

.field private mIconDisplay:I

.field private mIconTouchChain:Lcom/android/launcher3/icons/touch/AbstractIconTouchController;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public mLauncher:Lcom/android/launcher3/Launcher;

.field private mRenderManager:Lcom/android/launcher3/iconrender/RenderManager;

.field private mRenderedTitle:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private applyLabelInner(Lcom/android/launcher3/model/data/ItemInfoWithIcon;ZZ)V
    .registers 7

    invoke-static {p1}, Lcom/android/launcher3/iconrender/TitleRenderParams;->obtain(Lcom/android/launcher3/model/data/ItemInfoWithIcon;)Lcom/android/launcher3/iconrender/TitleRenderParams;

    move-result-object v0

    iput-boolean p2, v0, Lcom/android/launcher3/iconrender/TitleRenderParams;->mIsInvisible:Z

    iput-boolean p3, v0, Lcom/android/launcher3/iconrender/TitleRenderParams;->needDownloadAnimation:Z

    iget-object p3, p0, Lcom/android/launcher3/BubbleTextViewExtImplOplus;->mHostView:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {p3}, Lcom/android/launcher3/BubbleTextView;->shouldTextBeVisible()Z

    move-result p3

    iput-boolean p3, v0, Lcom/android/launcher3/iconrender/TitleRenderParams;->mShouldTextBeVisible:Z

    iget p3, p1, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    if-nez p3, :cond_22

    invoke-static {}, Lcom/android/launcher3/appedit/AppCustomizerManager;->getInstance()Lcom/android/launcher3/appedit/AppCustomizerManager;

    move-result-object p3

    iget-object v1, p0, Lcom/android/launcher3/BubbleTextViewExtImplOplus;->mHostView:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {p3, p1, v1, v2}, Lcom/android/launcher3/appedit/AppCustomizerManager;->flatMapInfo(Lcom/android/launcher3/model/data/ItemInfo;Landroid/content/Context;I)I

    :cond_22
    iget-object p3, p0, Lcom/android/launcher3/BubbleTextViewExtImplOplus;->mRenderManager:Lcom/android/launcher3/iconrender/RenderManager;

    iget-object v1, p1, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {p3, v1, v0}, Lcom/android/launcher3/iconrender/RenderManager;->renderTitle(Ljava/lang/CharSequence;Lcom/android/launcher3/iconrender/TitleRenderParams;)Lcom/android/launcher3/iconrender/TitleRenderResult;

    move-result-object p3

    const/4 v0, 0x0

    if-eqz p3, :cond_34

    iget-object v0, p3, Lcom/android/launcher3/iconrender/TitleRenderResult;->mResult:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/android/launcher3/BubbleTextViewExtImplOplus;->mRenderedTitle:Ljava/lang/CharSequence;

    iget-boolean v0, p3, Lcom/android/launcher3/iconrender/TitleRenderResult;->interceptApplyLabel:Z

    goto :goto_37

    :cond_34
    const/4 p3, 0x0

    iput-object p3, p0, Lcom/android/launcher3/BubbleTextViewExtImplOplus;->mRenderedTitle:Ljava/lang/CharSequence;

    :goto_37
    if-nez v0, :cond_3e

    iget-object p3, p0, Lcom/android/launcher3/BubbleTextViewExtImplOplus;->mBubbleTextViewWrapper:Lcom/android/launcher3/IBubbleTextViewWrapper;

    invoke-interface {p3, p1}, Lcom/android/launcher3/IBubbleTextViewWrapper;->applyLabel(Lcom/android/launcher3/model/data/ItemInfoWithIcon;)V

    :cond_3e
    iget-object p1, p0, Lcom/android/launcher3/BubbleTextViewExtImplOplus;->mHostView:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {p1}, Lcom/android/launcher3/BubbleTextView;->shouldTextBeVisible()Z

    move-result p1

    if-eqz p1, :cond_4a

    if-eqz p2, :cond_49

    goto :goto_4a

    :cond_49
    return-void

    :cond_4a
    :goto_4a
    iget-object p0, p0, Lcom/android/launcher3/BubbleTextViewExtImplOplus;->mHostView:Lcom/android/launcher3/BubbleTextView;

    const-string p1, ""

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private initTouchControllerChain(Lcom/android/launcher3/iconrender/RenderManager;Lcom/android/launcher3/icons/anim/IIconAnimators;)Lcom/android/launcher3/icons/touch/AbstractIconTouchController;
    .registers 6

    new-instance p0, Lcom/android/launcher3/icons/touch/ToggleBarStateCheckController;

    invoke-direct {p0}, Lcom/android/launcher3/icons/touch/ToggleBarStateCheckController;-><init>()V

    new-instance v0, Lcom/android/launcher3/icons/touch/ValidTouchAreaController;

    invoke-direct {v0}, Lcom/android/launcher3/icons/touch/ValidTouchAreaController;-><init>()V

    new-instance v1, Lcom/android/launcher3/icons/touch/IconFastClickController;

    invoke-direct {v1}, Lcom/android/launcher3/icons/touch/IconFastClickController;-><init>()V

    new-instance v2, Lcom/android/launcher3/icons/touch/GenericTouchController;

    invoke-direct {v2, p1}, Lcom/android/launcher3/icons/touch/GenericTouchController;-><init>(Lcom/android/launcher3/icons/touch/ITouchProcessor;)V

    new-instance p1, Lcom/android/launcher3/icons/touch/GenericTouchController;

    invoke-direct {p1, p2}, Lcom/android/launcher3/icons/touch/GenericTouchController;-><init>(Lcom/android/launcher3/icons/touch/ITouchProcessor;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/icons/touch/AbstractIconTouchController;->setNext(Lcom/android/launcher3/icons/touch/AbstractIconTouchController;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/icons/touch/AbstractIconTouchController;->setNext(Lcom/android/launcher3/icons/touch/AbstractIconTouchController;)V

    invoke-virtual {v1, v2}, Lcom/android/launcher3/icons/touch/AbstractIconTouchController;->setNext(Lcom/android/launcher3/icons/touch/AbstractIconTouchController;)V

    invoke-virtual {v2, p1}, Lcom/android/launcher3/icons/touch/AbstractIconTouchController;->setNext(Lcom/android/launcher3/icons/touch/AbstractIconTouchController;)V

    return-object p0
.end method

.method private onOplusOnMeasure(II)V
    .registers 3

    return-void
.end method


# virtual methods
.method public varargs animateDotAlpha([F)V
    .registers 3

    iget-object p0, p0, Lcom/android/launcher3/BubbleTextViewExtImplOplus;->mRenderManager:Lcom/android/launcher3/iconrender/RenderManager;

    const-class v0, Lcom/android/launcher3/iconrender/impl/IIconNotificationDotExport;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/iconrender/RenderManager;->findExportImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Lcom/android/launcher3/iconrender/impl/IIconNotificationDotExport;

    if-eqz v0, :cond_11

    check-cast p0, Lcom/android/launcher3/iconrender/impl/IIconNotificationDotExport;

    invoke-interface {p0, p1}, Lcom/android/launcher3/iconrender/impl/IIconNotificationDotExport;->animateDotAlpha([F)V

    :cond_11
    return-void
.end method

.method public applyColorDotState(Lcom/android/launcher3/model/data/ItemInfo;Z)V
    .registers 4

    iget-object p0, p0, Lcom/android/launcher3/BubbleTextViewExtImplOplus;->mRenderManager:Lcom/android/launcher3/iconrender/RenderManager;

    const-class v0, Lcom/android/launcher3/iconrender/impl/IIconNotificationDotExport;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/iconrender/RenderManager;->findExportImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Lcom/android/launcher3/iconrender/impl/IIconNotificationDotExport;

    if-eqz v0, :cond_11

    check-cast p0, Lcom/android/launcher3/iconrender/impl/IIconNotificationDotExport;

    invoke-interface {p0, p1, p2}, Lcom/android/launcher3/iconrender/impl/IIconNotificationDotExport;->applyColorDotState(Lcom/android/launcher3/model/data/ItemInfo;Z)V

    :cond_11
    return-void
.end method

.method public applyFromApplicationInfoExitPoint(Lcom/android/launcher3/model/data/AppInfo;)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/BubbleTextViewExtImplOplus;->mRenderManager:Lcom/android/launcher3/iconrender/RenderManager;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/iconrender/RenderManager;->onBindApplicationInfo(Lcom/android/launcher3/model/data/AppInfo;)V

    return-void
.end method

.method public applyFromPackageItemInfo(Lcom/android/launcher3/BubbleTextView;Lcom/android/launcher3/model/data/PackageItemInfo;)V
    .registers 3

    invoke-virtual {p1, p2}, Lcom/android/launcher3/BubbleTextView;->applyIconAndLabel(Lcom/android/launcher3/model/data/ItemInfoWithIcon;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/android/launcher3/BubbleTextView;->verifyHighRes()V

    return-void
.end method

.method public applyFromWorkspaceItemExitPoint(Lcom/android/launcher3/model/data/WorkspaceItemInfo;Z)V
    .registers 3

    iget-object p0, p0, Lcom/android/launcher3/BubbleTextViewExtImplOplus;->mRenderManager:Lcom/android/launcher3/iconrender/RenderManager;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/iconrender/RenderManager;->onBindWorkspaceItem(Lcom/android/launcher3/model/data/WorkspaceItemInfo;Z)V

    return-void
.end method

.method public applyHighTempProtectedState(Lcom/android/launcher3/model/data/ItemInfoWithIcon;)V
    .registers 6

    if-nez p1, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Lcom/android/launcher3/BubbleTextViewExtImplOplus;->mHostView:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_5d

    invoke-static {v0}, Lcom/android/launcher/hightemperatureprotection/HighTemperatureProtectionManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/hightemperatureprotection/HighTemperatureProtectionManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher/hightemperatureprotection/HighTemperatureProtectionManager;->isHighTempProtectedEnable()Z

    move-result v1

    if-eqz v1, :cond_2d

    invoke-static {v0}, Lcom/android/launcher/hightemperatureprotection/HighTemperatureProtectionManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/hightemperatureprotection/HighTemperatureProtectionManager;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/launcher/hightemperatureprotection/HighTemperatureProtectionManager;->isAppInWhiteList(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2d

    const/4 v1, 0x1

    goto :goto_2e

    :cond_2d
    const/4 v1, 0x0

    :goto_2e
    const-string v2, "applyHighTempProtectedState: "

    invoke-static {v2}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", isEnableHighTempProtected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BubbleTextViewExtImplOplus"

    invoke-static {v3, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/android/launcher/hightemperatureprotection/HighTemperatureProtectionManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/hightemperatureprotection/HighTemperatureProtectionManager;

    move-result-object v0

    iget-object p0, p0, Lcom/android/launcher3/BubbleTextViewExtImplOplus;->mHostView:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v0, v1, p0, p1}, Lcom/android/launcher/hightemperatureprotection/HighTemperatureProtectionManager;->updateTempProtectedDrawableState(ZLandroid/graphics/drawable/Drawable;Lcom/android/launcher3/model/data/ItemInfoWithIcon;)V

    :cond_5d
    return-void
.end method

.method public applyLabel(Lcom/android/launcher3/model/data/ItemInfoWithIcon;)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/BubbleTextViewExtImplOplus;->applyLabel(Lcom/android/launcher3/model/data/ItemInfoWithIcon;Z)V

    return-void
.end method

.method public applyLabel(Lcom/android/launcher3/model/data/ItemInfoWithIcon;Z)V
    .registers 4

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/BubbleTextViewExtImplOplus;->applyLabelInner(Lcom/android/launcher3/model/data/ItemInfoWithIcon;ZZ)V

    return-void
.end method

.method public applyLabelBeforeSetText(Lcom/android/launcher3/model/data/ItemInfoWithIcon;)Ljava/lang/CharSequence;
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/BubbleTextViewExtImplOplus;->mRenderedTitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    iget v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    if-nez v0, :cond_17

    invoke-static {}, Lcom/android/launcher3/appedit/AppCustomizerManager;->getInstance()Lcom/android/launcher3/appedit/AppCustomizerManager;

    move-result-object v0

    iget-object p0, p0, Lcom/android/launcher3/BubbleTextViewExtImplOplus;->mHostView:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p0

    const/4 v1, -0x1

    invoke-virtual {v0, p1, p0, v1}, Lcom/android/launcher3/appedit/AppCustomizerManager;->flatMapInfo(Lcom/android/launcher3/model/data/ItemInfo;Landroid/content/Context;I)I

    :cond_17
    iget-object p0, p1, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public applyOplusProgressLevel(IZZ)V
    .registers 15

    iget-object v0, p0, Lcom/android/launcher3/BubbleTextViewExtImplOplus;->mHostView:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    if-eqz v2, :cond_b3

    invoke-virtual {v0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    const/16 v3, 0x64

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-lt p1, v3, :cond_26

    iget-object v1, v2, Lcom/android/launcher3/model/data/ItemInfo;->contentDescription:Ljava/lang/CharSequence;

    if-eqz v1, :cond_20

    goto :goto_22

    :cond_20
    const-string v1, ""

    :goto_22
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_59

    :cond_26
    if-lez p1, :cond_49

    const v3, 0x7f1200e6

    new-array v7, v4, [Ljava/lang/Object;

    iget-object v8, v2, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    aput-object v8, v7, v5

    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v8

    int-to-float v9, p1

    const v10, 0x3c23d70a  # 0.01f

    mul-float/2addr v9, v10

    float-to-double v9, v9

    invoke-virtual {v8, v9, v10}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v6

    invoke-virtual {v1, v3, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_59

    :cond_49
    const v3, 0x7f1200ff

    new-array v7, v6, [Ljava/lang/Object;

    iget-object v8, v2, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    aput-object v8, v7, v5

    invoke-virtual {v1, v3, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_59
    iget-object v1, v2, Lcom/android/launcher3/model/data/ItemInfo;->mInstallState:Lcom/android/launcher/download/InstallState;

    invoke-virtual {v1}, Lcom/android/launcher/download/InstallState;->isFromOplusAppStore()Z

    move-result v1

    if-eqz v1, :cond_b3

    iget-object v1, p0, Lcom/android/launcher3/BubbleTextViewExtImplOplus;->mRenderManager:Lcom/android/launcher3/iconrender/RenderManager;

    const-class v3, Lcom/android/launcher3/iconrender/impl/IOplusDownloadProgressHandler;

    invoke-virtual {v1, v3}, Lcom/android/launcher3/iconrender/RenderManager;->findExportImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/iconrender/impl/IOplusDownloadProgressHandler;

    if-eqz v1, :cond_7c

    invoke-interface {v1, v2, p1, p2, p3}, Lcom/android/launcher3/iconrender/impl/IOplusDownloadProgressHandler;->handleDownloadProgressChanged(Lcom/android/launcher3/model/data/ItemInfoWithIcon;IZZ)Z

    move-result p3

    if-eqz p3, :cond_7c

    invoke-virtual {v0}, Lcom/android/launcher3/BubbleTextView;->shouldTextBeVisible()Z

    move-result p1

    xor-int/2addr p1, v6

    invoke-direct {p0, v2, p1, p2}, Lcom/android/launcher3/BubbleTextViewExtImplOplus;->applyLabelInner(Lcom/android/launcher3/model/data/ItemInfoWithIcon;ZZ)V

    goto :goto_b3

    :cond_7c
    invoke-virtual {v2}, Lcom/android/launcher3/model/data/ItemInfo;->isOplusExpansionDownloadingApp()Z

    move-result p3

    if-eqz p3, :cond_b3

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p3

    if-eqz p3, :cond_ab

    const/4 p3, 0x4

    new-array p3, p3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p3, v5

    aput-object v2, p3, v6

    iget-object p1, v2, Lcom/android/launcher3/model/data/ItemInfo;->mInstallState:Lcom/android/launcher/download/InstallState;

    aput-object p1, p3, v4

    const/4 p1, 0x3

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, p3, p1

    const-string p1, "expansion download, progressLevel=%d,item=%s,installState=%s,needAnim=%s"

    invoke-static {p1, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p3, "InstallApp"

    const-string v1, "BubbleTextViewExtImplOplus"

    invoke-static {p3, v1, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_ab
    invoke-virtual {v0}, Lcom/android/launcher3/BubbleTextView;->shouldTextBeVisible()Z

    move-result p1

    xor-int/2addr p1, v6

    invoke-direct {p0, v2, p1, p2}, Lcom/android/launcher3/BubbleTextViewExtImplOplus;->applyLabelInner(Lcom/android/launcher3/model/data/ItemInfoWithIcon;ZZ)V

    :cond_b3
    :goto_b3
    return-void
.end method

.method public applyPromiseState(ZZZ)V
    .registers 7

    iget-object p1, p0, Lcom/android/launcher3/BubbleTextViewExtImplOplus;->mHostView:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    if-eqz v0, :cond_4b

    invoke-virtual {p1}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    const/4 v1, 0x0

    invoke-virtual {v0}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->hasPromiseIconUi()Z

    move-result v2

    if-eqz v2, :cond_24

    const/16 v2, 0x400

    invoke-virtual {v0, v2}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->hasStatusFlag(I)Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-virtual {v0}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->getInstallProgress()I

    move-result v1

    goto :goto_26

    :cond_24
    const/16 v1, 0x64

    :cond_26
    :goto_26
    iget-object v2, v0, Lcom/android/launcher3/model/data/ItemInfo;->mInstallState:Lcom/android/launcher/download/InstallState;

    invoke-virtual {v2}, Lcom/android/launcher/download/InstallState;->isUpgradingType()Z

    move-result v2

    if-eqz v2, :cond_32

    invoke-virtual {v0}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->getInstallProgress()I

    move-result v1

    :cond_32
    iget-object v2, v0, Lcom/android/launcher3/model/data/ItemInfo;->mInstallState:Lcom/android/launcher/download/InstallState;

    invoke-virtual {v2}, Lcom/android/launcher/download/InstallState;->isFromOplusAppStore()Z

    move-result v2

    if-eqz v2, :cond_3e

    invoke-virtual {p0, v1, p2, p3}, Lcom/android/launcher3/BubbleTextViewExtImplOplus;->applyOplusProgressLevel(IZZ)V

    goto :goto_4b

    :cond_3e
    invoke-virtual {v0}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->isAutoInstallApp()Z

    move-result p0

    if-eqz p0, :cond_4b

    sget-boolean p0, Lcom/android/common/config/FeatureOption;->isRLMDevice:Z

    if-nez p0, :cond_4b

    invoke-virtual {p1}, Lcom/android/launcher3/BubbleTextView;->applyProgressLevel()Lcom/android/launcher3/graphics/PreloadIconDrawable;

    :cond_4b
    :goto_4b
    return-void
.end method

.method public applySelectedState(ZIZ)V
    .registers 5

    iget-object p0, p0, Lcom/android/launcher3/BubbleTextViewExtImplOplus;->mRenderManager:Lcom/android/launcher3/iconrender/RenderManager;

    const-class v0, Lcom/android/launcher3/iconrender/impl/ISelectableIcon;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/iconrender/RenderManager;->findExportImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_f

    check-cast p0, Lcom/android/launcher3/iconrender/impl/ISelectableIcon;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/launcher3/iconrender/impl/ISelectableIcon;->applySelectedState(ZIZ)V

    :cond_f
    return-void
.end method

.method public applyViewFadeState(ZIZLcom/android/launcher3/icons/anim/ViewAlphaAnimatorCallBacks;)Z
    .registers 5

    iget-object p0, p0, Lcom/android/launcher3/BubbleTextViewExtImplOplus;->mIconAnimators:Lcom/android/launcher3/icons/anim/IIconAnimators;

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/android/launcher3/icons/anim/IIconViewFadeAnimator;->applyViewFadeState(ZIZLcom/android/launcher3/icons/anim/ViewAlphaAnimatorCallBacks;)Z

    move-result p0

    return p0
.end method

.method public beforeTextViewOnMeasure(II)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/BubbleTextViewExtImplOplus;->onOplusOnMeasure(II)V

    iget-object v0, p0, Lcom/android/launcher3/BubbleTextViewExtImplOplus;->mRenderManager:Lcom/android/launcher3/iconrender/RenderManager;

    iget-object p0, p0, Lcom/android/launcher3/BubbleTextViewExtImplOplus;->mHostView:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/launcher3/iconrender/RenderManager;->beforeTextViewOnMeasure(Lcom/android/launcher3/BubbleTextView;II)V

    return-void
.end method

.method public canDrawShadow()Z
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/BubbleTextViewExtImplOplus;->mIconAnimators:Lcom/android/launcher3/icons/anim/IIconAnimators;

    invoke-interface {p0}, Lcom/android/launcher3/icons/anim/IIconSpiritAnimator;->canDrawShadow()Z

    move-result p0

    return p0
.end method

.method public cancelPointerAnim()V
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/BubbleTextViewExtImplOplus;->mIconAnimators:Lcom/android/launcher3/icons/anim/IIconAnimators;

    invoke-interface {p0}, Lcom/android/launcher3/icons/anim/IIconSpiritAnimator;->cancelPointerAnim()V

    return-void
.end method

.method public cancelTextAlphaAnimator()V
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/BubbleTextViewExtImplOplus;->mIconAnimators:Lcom/android/launcher3/icons/anim/IIconAnimators;

    invoke-interface {p0}, Lcom/android/launcher3/icons/anim/ITextAlphaAnimator;->cancelTextAlphaAnimator()V

    return-void
.end method

.method public createExtWith(Ljava/lang/Object;)Lcom/android/launcher3/IBubbleTextViewExt;
    .registers 3
    .param p1  # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    check-cast p1, Lcom/android/launcher3/BubbleTextView;

    iput-object p1, p0, Lcom/android/launcher3/BubbleTextViewExtImplOplus;->mHostView:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {p1}, Lcom/android/launcher3/BubbleTextView;->getWrapper()Lcom/android/launcher3/IBubbleTextViewWrapper;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/BubbleTextViewExtImplOplus;->mBubbleTextViewWrapper:Lcom/android/launcher3/IBubbleTextViewWrapper;

    invoke-static {}, Lcom/android/launcher3/iconrender/RenderManager;->newBuilder()Lcom/android/launcher3/iconrender/RenderManager$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/android/launcher3/BubbleTextViewExtImplOplus;->mHostView:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/iconrender/RenderManager$Builder;->withHostView(Lcom/android/launcher3/BubbleTextView;)Lcom/android/launcher3/iconrender/RenderManager$Builder;

    move-result-object p1

    const-class v0, Lcom/android/launcher3/iconrender/impl/DownloadProgressIconRenderer;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/iconrender/RenderManager$Builder;->addIconRenderer(Ljava/lang/Class;)Lcom/android/launcher3/iconrender/RenderManager$Builder;

    move-result-object p1

    const-class v0, Lcom/android/launcher3/iconrender/impl/IconNotificationDotRenderer;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/iconrender/RenderManager$Builder;->addIconRenderer(Ljava/lang/Class;)Lcom/android/launcher3/iconrender/RenderManager$Builder;

    move-result-object p1

    const-class v0, Lcom/android/launcher3/iconrender/impl/DownloadAppTitleRenderer;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/iconrender/RenderManager$Builder;->addTitleRenderer(Ljava/lang/Class;)Lcom/android/launcher3/iconrender/RenderManager$Builder;

    move-result-object p1

    const-class v0, Lcom/android/launcher3/iconrender/impl/NewUpdateDotRenderer;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/iconrender/RenderManager$Builder;->addTitleRenderer(Ljava/lang/Class;)Lcom/android/launcher3/iconrender/RenderManager$Builder;

    move-result-object p1

    const-class v0, Lcom/android/launcher3/iconrender/impl/ExpansionDownloadRenderer;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/iconrender/RenderManager$Builder;->addTitleRenderer(Ljava/lang/Class;)Lcom/android/launcher3/iconrender/RenderManager$Builder;

    move-result-object p1

    sget-boolean v0, Lcom/android/common/config/FeatureOption;->isSupportIconShimmer:Z

    if-eqz v0, :cond_3b

    const-class v0, Lcom/android/launcher3/iconrender/impl/IconShimmerRenderer;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/iconrender/RenderManager$Builder;->addIconRenderer(Ljava/lang/Class;)Lcom/android/launcher3/iconrender/RenderManager$Builder;

    :cond_3b
    invoke-static {}, Lcom/android/launcher3/folder/big/FolderManager;->supportBigFolder()Z

    move-result v0

    if-eqz v0, :cond_46

    const-class v0, Lcom/android/launcher3/iconrender/impl/FolderIconPreviewRender;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/iconrender/RenderManager$Builder;->addIconRenderer(Ljava/lang/Class;)Lcom/android/launcher3/iconrender/RenderManager$Builder;

    :cond_46
    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isLargeDisplayDevice()Z

    move-result v0

    if-eqz v0, :cond_62

    iget-object v0, p0, Lcom/android/launcher3/BubbleTextViewExtImplOplus;->mHostView:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher/powersave/SuperPowerModeManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/powersave/SuperPowerModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/powersave/SuperPowerModeManager;->isInSuperPowerMode()Z

    move-result v0

    if-nez v0, :cond_62

    const-class v0, Lcom/android/launcher3/iconrender/impl/SelectStateIconLargeDeviceRenderer;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/iconrender/RenderManager$Builder;->addIconRenderer(Ljava/lang/Class;)Lcom/android/launcher3/iconrender/RenderManager$Builder;

    goto :goto_67

    :cond_62
    const-class v0, Lcom/android/launcher3/iconrender/impl/SelectStateIconRenderer;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/iconrender/RenderManager$Builder;->addIconRenderer(Ljava/lang/Class;)Lcom/android/launcher3/iconrender/RenderManager$Builder;

    :goto_67
    invoke-virtual {p1}, Lcom/android/launcher3/iconrender/RenderManager$Builder;->build()Lcom/android/launcher3/iconrender/RenderManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/BubbleTextViewExtImplOplus;->mRenderManager:Lcom/android/launcher3/iconrender/RenderManager;

    new-instance p1, Lcom/android/launcher3/icons/anim/OplusIconAnimators;

    iget-object v0, p0, Lcom/android/launcher3/BubbleTextViewExtImplOplus;->mHostView:Lcom/android/launcher3/BubbleTextView;

    invoke-direct {p1, v0}, Lcom/android/launcher3/icons/anim/OplusIconAnimators;-><init>(Lcom/android/launcher3/BubbleTextView;)V

    iput-object p1, p0, Lcom/android/launcher3/BubbleTextViewExtImplOplus;->mIconAnimators:Lcom/android/launcher3/icons/anim/IIconAnimators;

    iget-object v0, p0, Lcom/android/launcher3/BubbleTextViewExtImplOplus;->mRenderManager:Lcom/android/launcher3/iconrender/RenderManager;

    invoke-direct {p0, v0, p1}, Lcom/android/launcher3/BubbleTextViewExtImplOplus;->initTouchControllerChain(Lcom/android/launcher3/iconrender/RenderManager;Lcom/android/launcher3/icons/anim/IIconAnimators;)Lcom/android/launcher3/icons/touch/AbstractIconTouchController;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/BubbleTextViewExtImplOplus;->mIconTouchChain:Lcom/android/launcher3/icons/touch/AbstractIconTouchController;

    return-object p0
.end method

.method public bridge synthetic createExtWith(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .param p1  # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/launcher3/BubbleTextViewExtImplOplus;->createExtWith(Ljava/lang/Object;)Lcom/android/launcher3/IBubbleTextViewExt;

    move-result-object p0

    return-object p0
.end method

.method public enableBackGroundShadow()Z
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/BubbleTextViewExtImplOplus;->mIconAnimators:Lcom/android/launcher3/icons/anim/IIconAnimators;

    invoke-interface {p0}, Lcom/android/launcher3/icons/anim/IIconSpiritAnimator;->enableBackGroundShadow()Z

    move-result p0

    return p0
.end method

.method public enableHardwareLayer(Z)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/BubbleTextViewExtImplOplus;->mIconAnimators:Lcom/android/launcher3/icons/anim/IIconAnimators;

    invoke-interface {p0, p1}, Lcom/android/launcher3/icons/anim/IIconSpiritAnimator;->enableHardwareLayer(Z)V

    return-void
.end method

.method public executeAfterIconDraw(Landroid/graphics/Canvas;)V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/BubbleTextViewExtImplOplus;->mRenderManager:Lcom/android/launcher3/iconrender/RenderManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/launcher3/iconrender/RenderManager;->renderIcon(Landroid/graphics/Canvas;Z)V

    iget-object p0, p0, Lcom/android/launcher3/BubbleTextViewExtImplOplus;->mIconAnimators:Lcom/android/launcher3/icons/anim/IIconAnimators;

    invoke-interface {p0, p1}, Lcom/android/launcher3/icons/anim/IIconAnimators;->executeAfterIconDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public forceHideDot(ZZ)V
    .registers 4

    iget-object p0, p0, Lcom/android/launcher3/BubbleTextViewExtImplOplus;->mRenderManager:Lcom/android/launcher3/iconrender/RenderManager;

    const-class v0, Lcom/android/launcher3/iconrender/impl/IIconNotificationDotExport;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/iconrender/RenderManager;->findExportImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Lcom/android/launcher3/iconrender/impl/IIconNotificationDotExport;

    if-eqz v0, :cond_11

    check-cast p0, Lcom/android/launcher3/iconrender/impl/IIconNotificationDotExport;

    invoke-interface {p0, p1, p2}, Lcom/android/launcher3/iconrender/impl/IIconNotificationDotExport;->forceHideDot(ZZ)V

    :cond_11
    return-void
.end method

.method public getBGPaint()Landroid/graphics/Paint;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/BubbleTextViewExtImplOplus;->mIconAnimators:Lcom/android/launcher3/icons/anim/IIconAnimators;

    invoke-interface {p0}, Lcom/android/launcher3/icons/anim/IIconSpiritAnimator;->getBGPaint()Landroid/graphics/Paint;

    move-result-object p0

    return-object p0
.end method

.method public getCallBackForDotScale()Ljava/lang/Runnable;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/BubbleTextViewExtImplOplus;->mDotScaleAnimCallBack:Ljava/lang/Runnable;

    return-object p0
.end method

.method public getCurrentIconArea()Landroid/graphics/RectF;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/BubbleTextViewExtImplOplus;->mIconAnimators:Lcom/android/launcher3/icons/anim/IIconAnimators;

    invoke-interface {p0}, Lcom/android/launcher3/icons/anim/IIconSpiritAnimator;->getCurrentIconArea()Landroid/graphics/RectF;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentRect()Landroid/graphics/RectF;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/BubbleTextViewExtImplOplus;->mIconAnimators:Lcom/android/launcher3/icons/anim/IIconAnimators;

    invoke-interface {p0}, Lcom/android/launcher3/icons/anim/IIconSpiritAnimator;->getCurrentRect()Landroid/graphics/RectF;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentTranslationX()F
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/BubbleTextViewExtImplOplus;->mIconAnimators:Lcom/android/launcher3/icons/anim/IIconAnimators;

    invoke-interface {p0}, Lcom/android/launcher3/icons/anim/IIconSpiritAnimator;->getCurrentTranslationX()F

    move-result p0

    return p0
.end method

.method public getCurrentTranslationY()F
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/BubbleTextViewExtImplOplus;->mIconAnimators:Lcom/android/launcher3/icons/anim/IIconAnimators;

    invoke-interface {p0}, Lcom/android/launcher3/icons/anim/IIconSpiritAnimator;->getCurrentTranslationY()F

    move-result p0

    return p0
.end method

.method public getEventX()F
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/BubbleTextViewExtImplOplus;->mIconAnimators:Lcom/android/launcher3/icons/anim/IIconAnimators;

    invoke-interface {p0}, Lcom/android/launcher3/icons/anim/IIconSpiritAnimator;->getEventX()F

    move-result p0

    return p0
.end method

.method public getEventY()F
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/BubbleTextViewExtImplOplus;->mIconAnimators:Lcom/android/launcher3/icons/anim/IIconAnimators;

    invoke-interface {p0}, Lcom/android/launcher3/icons/anim/IIconSpiritAnimator;->getEventY()F

    move-result p0

    return p0
.end method

.method public getIconAnimators()Lcom/android/launcher3/icons/anim/IIconAnimators;
    .registers 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/android/launcher3/BubbleTextViewExtImplOplus;->mIconAnimators:Lcom/android/launcher3/icons/anim/IIconAnimators;

    return-object p0
.end method

.method public getIconDisplay()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/BubbleTextViewExtImplOplus;->mIconDisplay:I

    return p0
.end method

.method public getIconRadius()F
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/BubbleTextViewExtImplOplus;->mIconAnimators:Lcom/android/launcher3/icons/anim/IIconAnimators;

    invoke-interface {p0}, Lcom/android/launcher3/icons/anim/IIconSpiritAnimator;->getIconRadius()F

    move-result p0

    return p0
.end method

.method public getLauncher()Lcom/android/launcher/Launcher;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/android/launcher3/BubbleTextViewExtImplOplus;->mBubbleTextViewWrapper:Lcom/android/launcher3/IBubbleTextViewWrapper;

    invoke-interface {p0}, Lcom/android/launcher3/IBubbleTextViewWrapper;->getActivity()Lcom/android/launcher3/views/ActivityContext;

    move-result-object p0

    instance-of v0, p0, Lcom/android/launcher/Launcher;

    if-eqz v0, :cond_11

    invoke-static {p0}, Lcom/android/launcher3/Launcher;->cast(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/Launcher;

    move-result-object p0

    check-cast p0, Lcom/android/launcher/Launcher;

    return-object p0

    :cond_11
    const/4 p0, 0x0

    return-object p0
.end method

.method public getPointerDrawable()Landroid/graphics/drawable/GradientDrawable;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/BubbleTextViewExtImplOplus;->mIconAnimators:Lcom/android/launcher3/icons/anim/IIconAnimators;

    invoke-interface {p0}, Lcom/android/launcher3/icons/anim/IIconSpiritAnimator;->getPointerDrawable()Landroid/graphics/drawable/GradientDrawable;

    move-result-object p0

    return-object p0
.end method

.method public getPressAnimationCurrentValue()F
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/BubbleTextViewExtImplOplus;->mIconAnimators:Lcom/android/launcher3/icons/anim/IIconAnimators;

    invoke-interface {p0}, Lcom/android/launcher3/icons/anim/IIconViewPressAnimator;->getPressAnimationCurrentValue()F

    move-result p0

    return p0
.end method

.method public getRealIconBounds(Landroid/graphics/Rect;)V
    .registers 6

    iget-object v0, p0, Lcom/android/launcher3/BubbleTextViewExtImplOplus;->mHostView:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/BubbleTextView;->getIconBounds(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/launcher3/BubbleTextViewExtImplOplus;->mBubbleTextViewWrapper:Lcom/android/launcher3/IBubbleTextViewWrapper;

    invoke-interface {v0}, Lcom/android/launcher3/IBubbleTextViewWrapper;->getActivity()Lcom/android/launcher3/views/ActivityContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v0

    iget v0, v0, Lcom/android/launcher3/OplusDeviceProfile;->mIconVisiableSizePx:I

    iget-object p0, p0, Lcom/android/launcher3/BubbleTextViewExtImplOplus;->mHostView:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getIconSize()I

    move-result p0

    sub-int/2addr p0, v0

    div-int/lit8 p0, p0, 0x2

    iget v0, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, p0

    iget v1, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, p0

    iget v2, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, p0

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, p0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public getShimmerView()Lcom/android/launcher/shimmer/IShimmerView;
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/BubbleTextViewExtImplOplus;->mRenderManager:Lcom/android/launcher3/iconrender/RenderManager;

    const-class v1, Lcom/android/launcher3/iconrender/impl/IconShimmerRenderer$IShimmerViewProvider;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/iconrender/RenderManager;->findExportImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_11

    check-cast v0, Lcom/android/launcher3/iconrender/impl/IconShimmerRenderer$IShimmerViewProvider;

    invoke-interface {v0}, Lcom/android/launcher3/iconrender/impl/IconShimmerRenderer$IShimmerViewProvider;->getShimmerView()Lcom/android/launcher/shimmer/IShimmerView;

    move-result-object p0

    return-object p0

    :cond_11
    invoke-super {p0}, Lcom/android/launcher3/IBubbleTextViewExt;->getShimmerView()Lcom/android/launcher/shimmer/IShimmerView;

    move-result-object p0

    return-object p0
.end method

.method public getTitlePrefixDrawableBounds(Ljava/lang/Class;)Landroid/graphics/Rect;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/android/launcher3/iconrender/AbstractTitlePrefixRenderer;",
            ">;)",
            "Landroid/graphics/Rect;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/launcher3/BubbleTextViewExtImplOplus;->mRenderManager:Lcom/android/launcher3/iconrender/RenderManager;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/iconrender/RenderManager;->getTitlePrefixDrawableBounds(Ljava/lang/Class;)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public handleDefaultIconSize()I
    .registers 6

    iget-object v0, p0, Lcom/android/launcher3/BubbleTextViewExtImplOplus;->mBubbleTextViewWrapper:Lcom/android/launcher3/IBubbleTextViewWrapper;

    invoke-interface {v0}, Lcom/android/launcher3/IBubbleTextViewWrapper;->getActivity()Lcom/android/launcher3/views/ActivityContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/BubbleTextViewExtImplOplus;->mHostView:Lcom/android/launcher3/BubbleTextView;

    iget v2, v1, Lcom/android/launcher3/BubbleTextView;->mDisplay:I

    const/4 v3, 0x0

    if-eqz v2, :cond_2a

    const/16 v4, 0x9

    if-ne v2, v4, :cond_16

    goto :goto_2a

    :cond_16
    const/16 v4, 0x8

    if-ne v2, v4, :cond_51

    iget v2, v0, Lcom/android/launcher3/DeviceProfile;->iconTextSizePx:I

    int-to-float v2, v2

    invoke-virtual {v1, v3, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object p0, p0, Lcom/android/launcher3/BubbleTextViewExtImplOplus;->mHostView:Lcom/android/launcher3/BubbleTextView;

    iget v1, v0, Lcom/android/launcher3/DeviceProfile;->iconDrawablePaddingPx:I

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    iget v3, v0, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    goto :goto_51

    :cond_2a
    :goto_2a
    iget v2, v0, Lcom/android/launcher3/DeviceProfile;->iconTextSizePx:I

    int-to-float v2, v2

    invoke-virtual {v1, v3, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v1, p0, Lcom/android/launcher3/BubbleTextViewExtImplOplus;->mHostView:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070d6d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iget-object v2, p0, Lcom/android/launcher3/BubbleTextViewExtImplOplus;->mHostView:Lcom/android/launcher3/BubbleTextView;

    const/high16 v3, 0x3f800000  # 1.0f

    invoke-virtual {v2, v1, v3}, Landroid/widget/TextView;->setLineSpacing(FF)V

    iget-object p0, p0, Lcom/android/launcher3/BubbleTextViewExtImplOplus;->mHostView:Lcom/android/launcher3/BubbleTextView;

    iget v1, v0, Lcom/android/launcher3/DeviceProfile;->iconDrawablePaddingPx:I

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    iget v3, v0, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    :cond_51
    :goto_51
    return v3
.end method

.method public handleOnTouchEvent(Landroid/view/MotionEvent;)Lcom/android/launcher3/icons/touch/TouchEventResult;
    .registers 3

    invoke-static {}, Lcom/android/launcher3/icons/touch/TouchEventResult;->reset()Lcom/android/launcher3/icons/touch/TouchEventResult;

    iget-object v0, p0, Lcom/android/launcher3/BubbleTextViewExtImplOplus;->mIconTouchChain:Lcom/android/launcher3/icons/touch/AbstractIconTouchController;

    if-eqz v0, :cond_e

    iget-object p0, p0, Lcom/android/launcher3/BubbleTextViewExtImplOplus;->mHostView:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v0, p0, p1}, Lcom/android/launcher3/icons/touch/AbstractIconTouchController;->handleOnTouchEvent(Lcom/android/launcher3/BubbleTextView;Landroid/view/MotionEvent;)Lcom/android/launcher3/icons/touch/TouchEventResult;

    move-result-object p0

    return-object p0

    :cond_e
    const/4 p0, 0x0

    invoke-static {p0}, Lcom/android/launcher3/icons/touch/TouchEventResult;->get(Z)Lcom/android/launcher3/icons/touch/TouchEventResult;

    move-result-object p0

    return-object p0
.end method

.method public handleOrientation()V
    .registers 5

    iget-object v0, p0, Lcom/android/launcher3/BubbleTextViewExtImplOplus;->mBubbleTextViewWrapper:Lcom/android/launcher3/IBubbleTextViewWrapper;

    invoke-interface {v0}, Lcom/android/launcher3/IBubbleTextViewWrapper;->getActivity()Lcom/android/launcher3/views/ActivityContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/BubbleTextViewExtImplOplus;->mHostView:Lcom/android/launcher3/BubbleTextView;

    iget v2, v1, Lcom/android/launcher3/BubbleTextView;->mDisplay:I

    if-eqz v2, :cond_1a

    const/16 v3, 0x8

    if-eq v2, v3, :cond_1a

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1a

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3f

    :cond_1a
    iget-boolean v1, v1, Lcom/android/launcher3/BubbleTextView;->mLayoutHorizontal:Z

    iget-boolean v2, v0, Lcom/android/launcher3/DeviceProfile;->isLandscape:Z

    if-eq v1, v2, :cond_3f

    const-string v1, "BubbleTextView mLayoutHorizontal = "

    invoke-static {v1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/BubbleTextViewExtImplOplus;->mHostView:Lcom/android/launcher3/BubbleTextView;

    iget-boolean v2, v2, Lcom/android/launcher3/BubbleTextView;->mLayoutHorizontal:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " , isLandscape "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, v0, Lcom/android/launcher3/DeviceProfile;->isLandscape:Z

    const-string v3, "BubbleTextViewExtImplOplus"

    invoke-static {v1, v2, v3}, Lcom/android/common/config/b;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher3/BubbleTextViewExtImplOplus;->mHostView:Lcom/android/launcher3/BubbleTextView;

    iget-boolean v0, v0, Lcom/android/launcher3/DeviceProfile;->isLandscape:Z

    iput-boolean v0, p0, Lcom/android/launcher3/BubbleTextView;->mLayoutHorizontal:Z

    :cond_3f
    return-void
.end method

.method public handleSecondaryDisplay(Landroid/view/MotionEvent;)V
    .registers 8

    iget-object v0, p0, Lcom/android/launcher3/BubbleTextViewExtImplOplus;->mHostView:Lcom/android/launcher3/BubbleTextView;

    iget v1, v0, Lcom/android/launcher3/BubbleTextView;->mDisplay:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_18

    const/16 v4, 0x8

    if-eq v1, v4, :cond_18

    if-eq v1, v3, :cond_18

    const/4 v4, 0x2

    if-eq v1, v4, :cond_18

    const/16 v4, 0x9

    if-ne v1, v4, :cond_16

    goto :goto_18

    :cond_16
    move v1, v2

    goto :goto_19

    :cond_18
    :goto_18
    move v1, v3

    :goto_19
    iget-object v0, v0, Lcom/android/launcher3/BubbleTextView;->mLongPressHelper:Lcom/android/launcher3/CheckLongPressHelper;

    invoke-virtual {v0}, Lcom/android/launcher3/CheckLongPressHelper;->hasPerformedLongPress()Z

    move-result v0

    if-nez v0, :cond_63

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v3, :cond_63

    if-eqz v1, :cond_63

    iget-object v0, p0, Lcom/android/launcher3/BubbleTextViewExtImplOplus;->mHostView:Lcom/android/launcher3/BubbleTextView;

    iget v1, v0, Landroid/widget/TextView;->mPrivateFlags:I

    const/high16 v4, 0x2000000

    and-int/2addr v4, v1

    if-eqz v4, :cond_34

    move v4, v3

    goto :goto_35

    :cond_34
    move v4, v2

    :goto_35
    and-int/lit16 v1, v1, 0x4000

    if-eqz v1, :cond_3a

    move v2, v3

    :cond_3a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/launcher3/BubbleTextViewExtImplOplus;->isUpInViewArea(Lcom/android/launcher3/BubbleTextView;II)Z

    move-result p1

    const-string/jumbo v0, "onTouchEvent up : prePressed = "

    const-string v1, " , flagsPressed = "

    const-string v5, " , inArea = "

    invoke-static {v0, v4, v1, v2, v5}, Lcom/android/common/util/b0;->a(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "BubbleTextViewExtImplOplus"

    invoke-static {v0, p1, v1}, Lcom/android/common/config/b;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    if-nez v2, :cond_63

    if-nez v4, :cond_63

    if-eqz p1, :cond_63

    iget-object p0, p0, Lcom/android/launcher3/BubbleTextViewExtImplOplus;->mHostView:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {p0, v3}, Landroid/widget/TextView;->setPressed(Z)V

    :cond_63
    return-void
.end method

.method public initSpiritAnimParams()V
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/BubbleTextViewExtImplOplus;->mIconAnimators:Lcom/android/launcher3/icons/anim/IIconAnimators;

    invoke-interface {p0}, Lcom/android/launcher3/icons/anim/IIconSpiritAnimator;->initSpiritAnimParams()V

    return-void
.end method

.method public isEnterAnim()Z
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/BubbleTextViewExtImplOplus;->mIconAnimators:Lcom/android/launcher3/icons/anim/IIconAnimators;

    invoke-interface {p0}, Lcom/android/launcher3/icons/anim/IIconSpiritAnimator;->isEnterAnim()Z

    move-result p0

    return p0
.end method

.method public isInState(Lcom/android/launcher3/LauncherState;)Z
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/BubbleTextViewExtImplOplus;->mLauncher:Lcom/android/launcher3/Launcher;

    if-eqz v0, :cond_20

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/android/launcher3/BubbleTextViewExtImplOplus;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v0

    if-eqz v0, :cond_20

    iget-object p0, p0, Lcom/android/launcher3/BubbleTextViewExtImplOplus;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result p0

    if-eqz p0, :cond_20

    const/4 p0, 0x1

    return p0

    :cond_20
    const/4 p0, 0x0

    return p0
.end method

.method public isLayoutHorizontal(Lcom/android/launcher3/BubbleTextView;)Z
    .registers 2

    iget-boolean p0, p1, Lcom/android/launcher3/BubbleTextView;->mLayoutHorizontal:Z

    return p0
.end method

.method public isPointerAnimRunning()Z
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/BubbleTextViewExtImplOplus;->mIconAnimators:Lcom/android/launcher3/icons/anim/IIconAnimators;

    invoke-interface {p0}, Lcom/android/launcher3/icons/anim/IIconSpiritAnimator;->isPointerAnimRunning()Z

    move-result p0

    return p0
.end method

.method public isShadowAnimRunning()Z
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/BubbleTextViewExtImplOplus;->mIconAnimators:Lcom/android/launcher3/icons/anim/IIconAnimators;

    invoke-interface {p0}, Lcom/android/launcher3/icons/anim/IIconSpiritAnimator;->isShadowAnimRunning()Z

    move-result p0

    return p0
.end method

.method public isSimpleExitAnim()Z
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/BubbleTextViewExtImplOplus;->mIconAnimators:Lcom/android/launcher3/icons/anim/IIconAnimators;

    invoke-interface {p0}, Lcom/android/launcher3/icons/anim/IIconSpiritAnimator;->isSimpleExitAnim()Z

    move-result p0

    return p0
.end method

.method public isSpiritAnimEnable()Z
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/BubbleTextViewExtImplOplus;->mIconAnimators:Lcom/android/launcher3/icons/anim/IIconAnimators;

    invoke-interface {p0}, Lcom/android/launcher3/icons/anim/IIconSpiritAnimator;->isSpiritAnimEnable()Z

    move-result p0

    return p0
.end method

.method public isStateSwitching()Z
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/BubbleTextViewExtImplOplus;->mRenderManager:Lcom/android/launcher3/iconrender/RenderManager;

    const-class v0, Lcom/android/launcher3/iconrender/impl/ISelectableIcon;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/iconrender/RenderManager;->findExportImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_11

    check-cast p0, Lcom/android/launcher3/iconrender/impl/ISelectableIcon;

    invoke-interface {p0}, Lcom/android/launcher3/iconrender/impl/ISelectableIcon;->isStateSwitching()Z

    move-result p0

    return p0

    :cond_11
    const/4 p0, 0x0

    return p0
.end method

.method public isStateSwitchingAnimaRunning()Z
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/BubbleTextViewExtImplOplus;->mRenderManager:Lcom/android/launcher3/iconrender/RenderManager;

    const-class v0, Lcom/android/launcher3/iconrender/impl/ISelectableIcon;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/iconrender/RenderManager;->findExportImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_11

    check-cast p0, Lcom/android/launcher3/iconrender/impl/ISelectableIcon;

    invoke-interface {p0}, Lcom/android/launcher3/iconrender/impl/ISelectableIcon;->isStateSwitchingAnimaRunning()Z

    move-result p0

    return p0

    :cond_11
    const/4 p0, 0x0

    return p0
.end method

.method public isUpInViewArea(Lcom/android/launcher3/BubbleTextView;II)Z
    .registers 4

    invoke-virtual {p1}, Landroid/widget/TextView;->getLeft()I

    move-result p0

    if-lt p2, p0, :cond_1a

    invoke-virtual {p1}, Landroid/widget/TextView;->getRight()I

    move-result p0

    if-gt p2, p0, :cond_1a

    invoke-virtual {p1}, Landroid/widget/TextView;->getTop()I

    move-result p0

    if-lt p3, p0, :cond_1a

    invoke-virtual {p1}, Landroid/widget/TextView;->getBottom()I

    move-result p0

    if-gt p3, p0, :cond_1a

    const/4 p0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 p0, 0x0

    :goto_1b
    return p0
.end method

.method public onAppUpdateDotSwitchChangeWhenIconFallen(Z)V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/BubbleTextViewExtImplOplus;->mHostView:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    invoke-virtual {p0, v0, p1}, Lcom/android/launcher3/BubbleTextViewExtImplOplus;->applyLabel(Lcom/android/launcher3/model/data/ItemInfoWithIcon;Z)V

    return-void
.end method

.method public onAttachFromWindowExitPoint()V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/BubbleTextViewExtImplOplus;->mHostView:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/android/launcher3/BubbleTextViewExtImplOplus;->mHostView:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/model/data/ItemInfo;->isNewInstallingOrUpgradingApp()Z

    move-result v0

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/android/launcher3/BubbleTextViewExtImplOplus;->mHostView:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_24

    move v0, v2

    goto :goto_25

    :cond_24
    move v0, v1

    :goto_25
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/launcher3/BubbleTextViewExtImplOplus;->applyPromiseState(ZZZ)V

    :cond_28
    return-void
.end method

.method public onDetachedFromWindowEntryPoint()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher3/BubbleTextViewExtImplOplus;->mBubbleTextViewWrapper:Lcom/android/launcher3/IBubbleTextViewWrapper;

    invoke-interface {v0}, Lcom/android/launcher3/IBubbleTextViewWrapper;->getIconLoadRequest()Lcom/android/launcher3/icons/cache/HandlerRunnable;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Lcom/android/launcher3/icons/cache/HandlerRunnable;->cancel()V

    iget-object p0, p0, Lcom/android/launcher3/BubbleTextViewExtImplOplus;->mBubbleTextViewWrapper:Lcom/android/launcher3/IBubbleTextViewWrapper;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/android/launcher3/IBubbleTextViewWrapper;->setIconLoadRequest(Lcom/android/launcher3/icons/cache/HandlerRunnable;)V

    :cond_11
    return-void
.end method

.method public onDispatchSetSelected(Z)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/BubbleTextViewExtImplOplus;->mRenderManager:Lcom/android/launcher3/iconrender/RenderManager;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/iconrender/RenderManager;->onViewSelectStateChanged(Z)V

    return-void
.end method

.method public onInterceptIconDraw(Landroid/graphics/Canvas;)Z
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/BubbleTextViewExtImplOplus;->mRenderManager:Lcom/android/launcher3/iconrender/RenderManager;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/launcher3/iconrender/RenderManager;->renderIcon(Landroid/graphics/Canvas;Z)V

    iget-object p0, p0, Lcom/android/launcher3/BubbleTextViewExtImplOplus;->mIconAnimators:Lcom/android/launcher3/icons/anim/IIconAnimators;

    invoke-interface {p0, p1}, Lcom/android/launcher3/icons/anim/IIconAnimators;->onInterceptIconDraw(Landroid/graphics/Canvas;)Z

    move-result p0

    or-int/lit8 p0, p0, 0x0

    return p0
.end method

.method public onInterceptSetIcon(Landroid/graphics/drawable/Drawable;)Z
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/BubbleTextViewExtImplOplus;->mRenderManager:Lcom/android/launcher3/iconrender/RenderManager;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/iconrender/RenderManager;->onInterceptSetIcon(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/android/launcher3/BubbleTextViewExtImplOplus;->mHostView:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    if-eqz p1, :cond_2f

    iget-object p1, p0, Lcom/android/launcher3/BubbleTextViewExtImplOplus;->mHostView:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-virtual {p1}, Lcom/android/launcher3/model/data/ItemInfo;->isNewInstallingOrUpgradingApp()Z

    move-result p1

    if-nez p1, :cond_2f

    iget-object p0, p0, Lcom/android/launcher3/BubbleTextViewExtImplOplus;->mRenderManager:Lcom/android/launcher3/iconrender/RenderManager;

    const-class p1, Lcom/android/launcher3/iconrender/impl/IOplusDownloadProgressHandler;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/iconrender/RenderManager;->findExportImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Lcom/android/launcher3/iconrender/impl/IOplusDownloadProgressHandler;

    if-eqz p1, :cond_2f

    check-cast p0, Lcom/android/launcher3/iconrender/impl/IOplusDownloadProgressHandler;

    const/4 p1, 0x1

    invoke-interface {p0, p1}, Lcom/android/launcher3/iconrender/impl/IOplusDownloadProgressHandler;->handleDownloadProgressFinish(Z)V

    :cond_2f
    const/4 p0, 0x0

    return p0
.end method

.method public onTextAppearanceChanged(I)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/BubbleTextViewExtImplOplus;->mRenderManager:Lcom/android/launcher3/iconrender/RenderManager;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/iconrender/RenderManager;->onTextAppearanceChanged(I)V

    return-void
.end method

.method public overrideApplyDotStateWithoutSuper(Lcom/android/launcher3/model/data/ItemInfo;Z)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/BubbleTextViewExtImplOplus;->applyColorDotState(Lcom/android/launcher3/model/data/ItemInfo;Z)V

    return-void
.end method

.method public overrideSetForceHideDotWithoutSuper(Z)V
    .registers 3

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/BubbleTextViewExtImplOplus;->forceHideDot(ZZ)V

    return-void
.end method

.method public playIconScaleAnimation(Lcom/android/launcher3/icons/anim/IconAnimationParams;Z)V
    .registers 3

    iget-object p0, p0, Lcom/android/launcher3/BubbleTextViewExtImplOplus;->mIconAnimators:Lcom/android/launcher3/icons/anim/IIconAnimators;

    invoke-interface {p0, p1, p2}, Lcom/android/launcher3/icons/anim/IIconScaleAnimator;->playIconScaleAnimation(Lcom/android/launcher3/icons/anim/IconAnimationParams;Z)V

    return-void
.end method

.method public playSpiritAnimation(ZZ)V
    .registers 3

    iget-object p0, p0, Lcom/android/launcher3/BubbleTextViewExtImplOplus;->mIconAnimators:Lcom/android/launcher3/icons/anim/IIconAnimators;

    invoke-interface {p0, p1, p2}, Lcom/android/launcher3/icons/anim/IIconSpiritAnimator;->playSpiritAnimation(ZZ)V

    return-void
.end method

.method public playTextAlphaAnimation(JLandroid/view/animation/Interpolator;Z)V
    .registers 5

    iget-object p0, p0, Lcom/android/launcher3/BubbleTextViewExtImplOplus;->mIconAnimators:Lcom/android/launcher3/icons/anim/IIconAnimators;

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/android/launcher3/icons/anim/ITextAlphaAnimator;->playTextAlphaAnimation(JLandroid/view/animation/Interpolator;Z)V

    return-void
.end method

.method public prepareForShadowAnim(Landroid/view/MotionEvent;)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/BubbleTextViewExtImplOplus;->mIconAnimators:Lcom/android/launcher3/icons/anim/IIconAnimators;

    invoke-interface {p0, p1}, Lcom/android/launcher3/icons/anim/IIconSpiritAnimator;->prepareForShadowAnim(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public reapplySelectState()V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/BubbleTextViewExtImplOplus;->mRenderManager:Lcom/android/launcher3/iconrender/RenderManager;

    const-class v0, Lcom/android/launcher3/iconrender/impl/ISelectableIcon;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/iconrender/RenderManager;->findExportImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_f

    check-cast p0, Lcom/android/launcher3/iconrender/impl/ISelectableIcon;

    invoke-interface {p0}, Lcom/android/launcher3/iconrender/impl/ISelectableIcon;->reapplySelectState()V

    :cond_f
    return-void
.end method

.method public recoveryIconWhenEnterToggleBar()V
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/BubbleTextViewExtImplOplus;->mIconAnimators:Lcom/android/launcher3/icons/anim/IIconAnimators;

    invoke-interface {p0}, Lcom/android/launcher3/icons/anim/IIconSpiritAnimator;->recoveryIconWhenEnterToggleBar()V

    return-void
.end method

.method public resetAllFlagImmediately(Z)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/BubbleTextViewExtImplOplus;->mIconAnimators:Lcom/android/launcher3/icons/anim/IIconAnimators;

    invoke-interface {p0, p1}, Lcom/android/launcher3/icons/anim/IIconSpiritAnimator;->resetAllFlagImmediately(Z)V

    return-void
.end method

.method public resetExitPoint()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/BubbleTextViewExtImplOplus;->mRenderedTitle:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/android/launcher3/BubbleTextViewExtImplOplus;->mRenderManager:Lcom/android/launcher3/iconrender/RenderManager;

    iget-object p0, p0, Lcom/android/launcher3/BubbleTextViewExtImplOplus;->mHostView:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/iconrender/RenderManager;->onViewReset(Lcom/android/launcher3/BubbleTextView;)V

    return-void
.end method

.method public resetPressAnimState()V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/BubbleTextViewExtImplOplus;->mRenderManager:Lcom/android/launcher3/iconrender/RenderManager;

    const-class v0, Lcom/android/launcher3/iconrender/impl/IIconNotificationDotExport;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/iconrender/RenderManager;->findExportImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Lcom/android/launcher3/iconrender/impl/IIconNotificationDotExport;

    if-eqz v0, :cond_11

    check-cast p0, Lcom/android/launcher3/iconrender/impl/IIconNotificationDotExport;

    invoke-interface {p0}, Lcom/android/launcher3/iconrender/impl/IIconNotificationDotExport;->resetPressAnimState()V

    :cond_11
    return-void
.end method

.method public resetPressAnimStateForFloating()V
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/BubbleTextViewExtImplOplus;->mIconAnimators:Lcom/android/launcher3/icons/anim/IIconAnimators;

    invoke-interface {p0}, Lcom/android/launcher3/icons/anim/IIconViewPressAnimator;->resetPressAnimStateForFloating()V

    return-void
.end method

.method public resetPressAnimStateForLongClick()V
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/BubbleTextViewExtImplOplus;->mIconAnimators:Lcom/android/launcher3/icons/anim/IIconAnimators;

    invoke-interface {p0}, Lcom/android/launcher3/icons/anim/IIconViewPressAnimator;->resetPressAnimStateForLongClick()V

    return-void
.end method

.method public resetPressAnimatorStateForTouch(Z)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/BubbleTextViewExtImplOplus;->mIconAnimators:Lcom/android/launcher3/icons/anim/IIconAnimators;

    invoke-interface {p0, p1}, Lcom/android/launcher3/icons/anim/IIconViewPressAnimator;->resetPressAnimatorStateForTouch(Z)V

    return-void
.end method

.method public setBFPreviewDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    iget-object p0, p0, Lcom/android/launcher3/BubbleTextViewExtImplOplus;->mRenderManager:Lcom/android/launcher3/iconrender/RenderManager;

    const-class v0, Lcom/android/launcher3/iconrender/impl/IFolderIconUpdateExport;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/iconrender/RenderManager;->findExportImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Lcom/android/launcher3/iconrender/impl/IFolderIconUpdateExport;

    if-eqz v0, :cond_11

    check-cast p0, Lcom/android/launcher3/iconrender/impl/IFolderIconUpdateExport;

    invoke-interface {p0, p1}, Lcom/android/launcher3/iconrender/impl/IFolderIconUpdateExport;->setPreviewDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_11
    return-void
.end method

.method public setCallBackForDotScale(Ljava/lang/Runnable;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/BubbleTextViewExtImplOplus;->mDotScaleAnimCallBack:Ljava/lang/Runnable;

    return-void
.end method

.method public setDrawShadowFlag(Z)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/BubbleTextViewExtImplOplus;->mIconAnimators:Lcom/android/launcher3/icons/anim/IIconAnimators;

    invoke-interface {p0, p1}, Lcom/android/launcher3/icons/anim/IIconSpiritAnimator;->setDrawShadowFlag(Z)V

    return-void
.end method

.method public setIconDisplay(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/BubbleTextViewExtImplOplus;->mIconDisplay:I

    return-void
.end method

.method public setIconVisibleExitPoint(Z)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/BubbleTextViewExtImplOplus;->mRenderManager:Lcom/android/launcher3/iconrender/RenderManager;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/iconrender/RenderManager;->onIconVisibleChanged(Z)V

    return-void
.end method

.method public setIconVisibleForFIView(Lcom/android/launcher3/BubbleTextView;Z)V
    .registers 3

    invoke-virtual {p1, p2}, Lcom/android/launcher3/BubbleTextView;->setIconVisible(Z)V

    return-void
.end method

.method public setLauncher(Lcom/android/launcher3/views/ActivityContext;)V
    .registers 3

    instance-of v0, p1, Lcom/android/launcher3/Launcher;

    if-eqz v0, :cond_a

    invoke-static {p1}, Lcom/android/launcher3/Launcher;->cast(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/Launcher;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/BubbleTextViewExtImplOplus;->mLauncher:Lcom/android/launcher3/Launcher;

    :cond_a
    return-void
.end method

.method public setLeftLocation(Landroid/view/MotionEvent;)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/BubbleTextViewExtImplOplus;->mIconAnimators:Lcom/android/launcher3/icons/anim/IIconAnimators;

    invoke-interface {p0, p1}, Lcom/android/launcher3/icons/anim/IIconSpiritAnimator;->setLeftLocation(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public setSelectedWithAnim(Z)V
    .registers 3

    iget-object p0, p0, Lcom/android/launcher3/BubbleTextViewExtImplOplus;->mRenderManager:Lcom/android/launcher3/iconrender/RenderManager;

    const-class v0, Lcom/android/launcher3/iconrender/impl/ISelectableIcon;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/iconrender/RenderManager;->findExportImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_f

    check-cast p0, Lcom/android/launcher3/iconrender/impl/ISelectableIcon;

    invoke-interface {p0, p1}, Lcom/android/launcher3/iconrender/impl/ISelectableIcon;->setSelectedWithAnim(Z)V

    :cond_f
    return-void
.end method

.method public setTextAlphaEntryPoint(F)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/BubbleTextViewExtImplOplus;->mRenderManager:Lcom/android/launcher3/iconrender/RenderManager;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/iconrender/RenderManager;->onTextAlphaChange(F)V

    return-void
.end method

.method public setTranslationTo(F)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/BubbleTextViewExtImplOplus;->mIconAnimators:Lcom/android/launcher3/icons/anim/IIconAnimators;

    invoke-interface {p0, p1}, Lcom/android/launcher3/icons/anim/IIconSpiritAnimator;->setTranslationTo(F)V

    return-void
.end method

.method public textInVisibleAnimation()Z
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/BubbleTextViewExtImplOplus;->mIconAnimators:Lcom/android/launcher3/icons/anim/IIconAnimators;

    invoke-interface {p0}, Lcom/android/launcher3/icons/anim/ITextAlphaAnimator;->textInVisibleAnimation()Z

    move-result p0

    return p0
.end method

.method public updateBFPreviewItemAlpha(I)V
    .registers 3

    iget-object p0, p0, Lcom/android/launcher3/BubbleTextViewExtImplOplus;->mRenderManager:Lcom/android/launcher3/iconrender/RenderManager;

    const-class v0, Lcom/android/launcher3/iconrender/impl/IFolderIconUpdateExport;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/iconrender/RenderManager;->findExportImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Lcom/android/launcher3/iconrender/impl/IFolderIconUpdateExport;

    if-eqz v0, :cond_11

    check-cast p0, Lcom/android/launcher3/iconrender/impl/IFolderIconUpdateExport;

    invoke-interface {p0, p1}, Lcom/android/launcher3/iconrender/impl/IFolderIconUpdateExport;->updatePreviewAlpha(I)V

    :cond_11
    return-void
.end method

.method public updateDotAlpha(F)V
    .registers 3

    iget-object p0, p0, Lcom/android/launcher3/BubbleTextViewExtImplOplus;->mRenderManager:Lcom/android/launcher3/iconrender/RenderManager;

    const-class v0, Lcom/android/launcher3/iconrender/impl/ISelectableIcon;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/iconrender/RenderManager;->findExportImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_f

    check-cast p0, Lcom/android/launcher3/iconrender/impl/ISelectableIcon;

    invoke-interface {p0, p1}, Lcom/android/launcher3/iconrender/impl/ISelectableIcon;->updateDotAlpha(F)V

    :cond_f
    return-void
.end method

.method public updateDotaAlphaWhenFolderUnfold(F)V
    .registers 3

    iget-object p0, p0, Lcom/android/launcher3/BubbleTextViewExtImplOplus;->mRenderManager:Lcom/android/launcher3/iconrender/RenderManager;

    const-class v0, Lcom/android/launcher3/iconrender/impl/IIconNotificationDotExport;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/iconrender/RenderManager;->findExportImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Lcom/android/launcher3/iconrender/impl/IIconNotificationDotExport;

    if-eqz v0, :cond_11

    check-cast p0, Lcom/android/launcher3/iconrender/impl/IIconNotificationDotExport;

    invoke-interface {p0, p1}, Lcom/android/launcher3/iconrender/impl/IIconNotificationDotExport;->updateDotaAlphaWhenFolderUnfold(F)V

    :cond_11
    return-void
.end method

.method public updateIconBounds()V
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/BubbleTextViewExtImplOplus;->mIconAnimators:Lcom/android/launcher3/icons/anim/IIconAnimators;

    invoke-interface {p0}, Lcom/android/launcher3/icons/anim/IIconSpiritAnimator;->updateIconBounds()V

    return-void
.end method

.method public updateIconDisplay(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/BubbleTextViewExtImplOplus;->mIconDisplay:I

    return-void
.end method

.method public updatePainterWhenDrawRadialCircle()Landroid/graphics/Paint;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/BubbleTextViewExtImplOplus;->mIconAnimators:Lcom/android/launcher3/icons/anim/IIconAnimators;

    invoke-interface {p0}, Lcom/android/launcher3/icons/anim/IIconSpiritAnimator;->updatePainterWhenDrawRadialCircle()Landroid/graphics/Paint;

    move-result-object p0

    return-object p0
.end method

.method public updateTextSize(FZ)V
    .registers 8

    sget-object v0, Lcom/android/common/util/FontManager;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v1, p0, Lcom/android/launcher3/BubbleTextViewExtImplOplus;->mHostView:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/common/util/FontManager;

    iput p1, v0, Lcom/android/common/util/FontManager;->mTextSizeScale:F

    iget-object v0, p0, Lcom/android/launcher3/BubbleTextViewExtImplOplus;->mHostView:Lcom/android/launcher3/BubbleTextView;

    const/4 v1, 0x0

    cmpl-float v1, p1, v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1b

    move v4, v2

    goto :goto_1c

    :cond_1b
    move v4, v3

    :goto_1c
    invoke-virtual {v0, v4}, Lcom/android/launcher3/BubbleTextView;->setTextVisibility(Z)V

    if-eqz p2, :cond_2b

    iget-object p2, p0, Lcom/android/launcher3/BubbleTextViewExtImplOplus;->mHostView:Lcom/android/launcher3/BubbleTextView;

    if-nez v1, :cond_27

    const/4 v0, 0x4

    goto :goto_28

    :cond_27
    move v0, v3

    :goto_28
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2b
    if-nez v1, :cond_2e

    return-void

    :cond_2e
    iget-object p2, p0, Lcom/android/launcher3/BubbleTextViewExtImplOplus;->mBubbleTextViewWrapper:Lcom/android/launcher3/IBubbleTextViewWrapper;

    invoke-interface {p2}, Lcom/android/launcher3/IBubbleTextViewWrapper;->getActivity()Lcom/android/launcher3/views/ActivityContext;

    move-result-object p2

    invoke-interface {p2}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object p2

    iget-object p0, p0, Lcom/android/launcher3/BubbleTextViewExtImplOplus;->mHostView:Lcom/android/launcher3/BubbleTextView;

    iget v0, p0, Lcom/android/launcher3/BubbleTextView;->mDisplay:I

    if-eqz v0, :cond_5b

    const/16 v1, 0x9

    if-eq v0, v1, :cond_5b

    const/16 v1, 0x8

    if-ne v0, v1, :cond_47

    goto :goto_5b

    :cond_47
    const/4 v1, 0x2

    if-ne v0, v1, :cond_52

    iget p2, p2, Lcom/android/launcher3/OplusDeviceProfile;->mIconTextSizeBasePx:I

    int-to-float p2, p2

    mul-float/2addr p2, p1

    invoke-virtual {p0, v3, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_62

    :cond_52
    if-ne v0, v2, :cond_62

    iget p2, p2, Lcom/android/launcher3/OplusDeviceProfile;->mAllAppsIconTextSizeBasePx:F

    mul-float/2addr p2, p1

    invoke-virtual {p0, v3, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_62

    :cond_5b
    :goto_5b
    iget p2, p2, Lcom/android/launcher3/OplusDeviceProfile;->mIconTextSizeBasePx:I

    int-to-float p2, p2

    mul-float/2addr p2, p1

    invoke-virtual {p0, v3, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_62
    :goto_62
    return-void
.end method

.method public updateVelocity(FF)V
    .registers 3

    iget-object p0, p0, Lcom/android/launcher3/BubbleTextViewExtImplOplus;->mIconAnimators:Lcom/android/launcher3/icons/anim/IIconAnimators;

    invoke-interface {p0, p1, p2}, Lcom/android/launcher3/icons/anim/IIconSpiritAnimator;->updateVelocity(FF)V

    return-void
.end method

.method public upgradeTranslation(Landroid/view/MotionEvent;)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/BubbleTextViewExtImplOplus;->mIconAnimators:Lcom/android/launcher3/icons/anim/IIconAnimators;

    invoke-interface {p0, p1}, Lcom/android/launcher3/icons/anim/IIconSpiritAnimator;->upgradeTranslation(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public whereIsThePointer(Lcom/android/launcher3/BubbleTextView;Landroid/view/MotionEvent;)I
    .registers 3

    iget-object p0, p0, Lcom/android/launcher3/BubbleTextViewExtImplOplus;->mIconAnimators:Lcom/android/launcher3/icons/anim/IIconAnimators;

    invoke-interface {p0, p1, p2}, Lcom/android/launcher3/icons/anim/IIconSpiritAnimator;->whereIsThePointer(Lcom/android/launcher3/BubbleTextView;Landroid/view/MotionEvent;)I

    move-result p0

    return p0
.end method
