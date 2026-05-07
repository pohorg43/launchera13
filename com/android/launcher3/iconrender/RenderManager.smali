.class public final Lcom/android/launcher3/iconrender/RenderManager;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/icons/touch/ITouchProcessor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/iconrender/RenderManager$Builder;
    }
.end annotation


# static fields
.field public static final DRAW_DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "RenderManager"


# instance fields
.field private mCurrentIconDrawable:Lcom/oplus/icons/OplusFastBitmapDrawable;

.field private mCurrentTextAppearance:I

.field private mEnableTitleRender:Z

.field private mExportImplMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mHostView:Lcom/android/launcher3/BubbleTextView;

.field private mIconRendererList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/launcher3/iconrender/IIconRenderer;",
            ">;"
        }
    .end annotation
.end field

.field private mIsIconVisible:Z

.field private mLayerCoverDrawable:Lcom/android/launcher3/iconrender/LayerCoverDrawable;

.field private mPendingRenderDrawables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private mRendererFactory:Lcom/android/launcher3/iconrender/AbstractRendererFactory;

.field private mTitleRendererList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/launcher3/iconrender/ITitleRenderer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/android/launcher3/iconrender/RenderManager$Builder;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/iconrender/RenderManager;->mExportImplMap:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/iconrender/RenderManager;->mPendingRenderDrawables:Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/iconrender/RenderManager;->mLayerCoverDrawable:Lcom/android/launcher3/iconrender/LayerCoverDrawable;

    invoke-static {p1}, Lcom/android/launcher3/iconrender/RenderManager$Builder;->access$000(Lcom/android/launcher3/iconrender/RenderManager$Builder;)Lcom/android/launcher3/BubbleTextView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/iconrender/RenderManager;->mHostView:Lcom/android/launcher3/BubbleTextView;

    invoke-static {p1}, Lcom/android/launcher3/iconrender/RenderManager$Builder;->access$100(Lcom/android/launcher3/iconrender/RenderManager$Builder;)Lcom/android/launcher3/iconrender/AbstractRendererFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/iconrender/RenderManager;->mRendererFactory:Lcom/android/launcher3/iconrender/AbstractRendererFactory;

    invoke-static {p1}, Lcom/android/launcher3/iconrender/RenderManager$Builder;->access$200(Lcom/android/launcher3/iconrender/RenderManager$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher3/iconrender/RenderManager;->mEnableTitleRender:Z

    iget-object v0, p0, Lcom/android/launcher3/iconrender/RenderManager;->mHostView:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v0}, Lcom/android/launcher3/BubbleTextView;->getWrapper()Lcom/android/launcher3/IBubbleTextViewWrapper;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/launcher3/IBubbleTextViewWrapper;->getIsIconVisible()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher3/iconrender/RenderManager;->mIsIconVisible:Z

    invoke-static {p1}, Lcom/android/launcher3/iconrender/RenderManager$Builder;->access$300(Lcom/android/launcher3/iconrender/RenderManager$Builder;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1}, Lcom/android/launcher3/iconrender/RenderManager$Builder;->access$400(Lcom/android/launcher3/iconrender/RenderManager$Builder;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/android/launcher3/iconrender/RenderManager;->initRenderers(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/iconrender/RenderManager$Builder;Lcom/android/launcher3/iconrender/RenderManager$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/launcher3/iconrender/RenderManager;-><init>(Lcom/android/launcher3/iconrender/RenderManager$Builder;)V

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/BubbleTextView;Lcom/android/launcher3/iconrender/IRenderer;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/iconrender/RenderManager;->lambda$onViewReset$1(Lcom/android/launcher3/BubbleTextView;Lcom/android/launcher3/iconrender/IRenderer;)V

    return-void
.end method

.method public static synthetic b(Lcom/android/launcher3/model/data/WorkspaceItemInfo;ZLcom/android/launcher3/iconrender/ITitleRenderer;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/launcher3/iconrender/RenderManager;->lambda$onBindWorkspaceItem$7(Lcom/android/launcher3/model/data/WorkspaceItemInfo;ZLcom/android/launcher3/iconrender/ITitleRenderer;)V

    return-void
.end method

.method public static synthetic c(Lcom/android/launcher3/model/data/AppInfo;Lcom/android/launcher3/iconrender/ITitleRenderer;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/iconrender/RenderManager;->lambda$onBindApplicationInfo$5(Lcom/android/launcher3/model/data/AppInfo;Lcom/android/launcher3/iconrender/ITitleRenderer;)V

    return-void
.end method

.method public static synthetic d(ILcom/android/launcher3/iconrender/IRenderer;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/iconrender/RenderManager;->lambda$onTextAppearanceChanged$3(ILcom/android/launcher3/iconrender/IRenderer;)V

    return-void
.end method

.method public static synthetic e(Lcom/android/launcher3/iconrender/RenderManager;ZLandroid/graphics/Canvas;Lcom/android/launcher3/iconrender/IIconRenderer;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/iconrender/RenderManager;->lambda$renderIcon$0(ZLandroid/graphics/Canvas;Lcom/android/launcher3/iconrender/IIconRenderer;)V

    return-void
.end method

.method public static synthetic f(ZLcom/android/launcher3/iconrender/ITitleRenderer;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/iconrender/RenderManager;->lambda$onViewSelectStateChanged$9(ZLcom/android/launcher3/iconrender/ITitleRenderer;)V

    return-void
.end method

.method private forEachRenderer(Ljava/util/function/Consumer;)V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/iconrender/RenderManager;->mTitleRendererList:Ljava/util/List;

    if-eqz v0, :cond_7

    invoke-interface {v0, p1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    :cond_7
    iget-object p0, p0, Lcom/android/launcher3/iconrender/RenderManager;->mIconRendererList:Ljava/util/List;

    if-eqz p0, :cond_e

    invoke-interface {p0, p1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    :cond_e
    return-void
.end method

.method public static synthetic g(Lcom/android/launcher3/model/data/WorkspaceItemInfo;ZLcom/android/launcher3/iconrender/IIconRenderer;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/launcher3/iconrender/RenderManager;->lambda$onBindWorkspaceItem$6(Lcom/android/launcher3/model/data/WorkspaceItemInfo;ZLcom/android/launcher3/iconrender/IIconRenderer;)V

    return-void
.end method

.method public static synthetic h(Lcom/android/launcher3/BubbleTextView;IILcom/android/launcher3/iconrender/IRenderer;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/launcher3/iconrender/RenderManager;->lambda$beforeTextViewOnMeasure$2(Lcom/android/launcher3/BubbleTextView;IILcom/android/launcher3/iconrender/IRenderer;)V

    return-void
.end method

.method public static synthetic i(Lcom/android/launcher3/model/data/AppInfo;Lcom/android/launcher3/iconrender/IIconRenderer;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/iconrender/RenderManager;->lambda$onBindApplicationInfo$4(Lcom/android/launcher3/model/data/AppInfo;Lcom/android/launcher3/iconrender/IIconRenderer;)V

    return-void
.end method

.method private initRenderers(Ljava/util/List;Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/android/launcher3/iconrender/ITitleRenderer;",
            ">;>;",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/android/launcher3/iconrender/IIconRenderer;",
            ">;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/launcher3/iconrender/RenderManager;->mRendererFactory:Lcom/android/launcher3/iconrender/AbstractRendererFactory;

    if-nez v0, :cond_f

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string p1, "RenderManager"

    const-string p2, "renderer factory is null!"

    invoke-static {p1, p2, p0}, Lcom/android/launcher3/iconrender/RenderManager;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_f
    iget-object v0, p0, Lcom/android/launcher3/iconrender/RenderManager;->mHostView:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz p2, :cond_46

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_46

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/android/launcher3/iconrender/RenderManager;->mIconRendererList:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_2c
    :goto_2c
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_46

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    iget-object v2, p0, Lcom/android/launcher3/iconrender/RenderManager;->mRendererFactory:Lcom/android/launcher3/iconrender/AbstractRendererFactory;

    invoke-virtual {v2, v1, v0, p0}, Lcom/android/launcher3/iconrender/AbstractRendererFactory;->createIconRenderer(Ljava/lang/Class;Landroid/content/Context;Lcom/android/launcher3/iconrender/RenderManager;)Lcom/android/launcher3/iconrender/IIconRenderer;

    move-result-object v1

    if-eqz v1, :cond_2c

    iget-object v2, p0, Lcom/android/launcher3/iconrender/RenderManager;->mIconRendererList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2c

    :cond_46
    if-eqz p1, :cond_77

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_77

    new-instance p2, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {p2, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p2, p0, Lcom/android/launcher3/iconrender/RenderManager;->mTitleRendererList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5d
    :goto_5d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_77

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Class;

    iget-object v1, p0, Lcom/android/launcher3/iconrender/RenderManager;->mRendererFactory:Lcom/android/launcher3/iconrender/AbstractRendererFactory;

    invoke-virtual {v1, p2, v0, p0}, Lcom/android/launcher3/iconrender/AbstractRendererFactory;->createTitleRenderer(Ljava/lang/Class;Landroid/content/Context;Lcom/android/launcher3/iconrender/RenderManager;)Lcom/android/launcher3/iconrender/ITitleRenderer;

    move-result-object p2

    if-eqz p2, :cond_5d

    iget-object v1, p0, Lcom/android/launcher3/iconrender/RenderManager;->mTitleRendererList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5d

    :cond_77
    iget-object p1, p0, Lcom/android/launcher3/iconrender/RenderManager;->mIconRendererList:Ljava/util/List;

    if-eqz p1, :cond_84

    sget-object p2, Lcom/android/launcher3/folder/h;->c:Lcom/android/launcher3/folder/h;

    invoke-static {p2}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    :cond_84
    iget-object p0, p0, Lcom/android/launcher3/iconrender/RenderManager;->mTitleRendererList:Ljava/util/List;

    if-eqz p0, :cond_95

    sget-object p1, Lcom/android/launcher3/iconrender/e;->b:Lcom/android/launcher3/iconrender/e;

    invoke-static {p1}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->reverseOrder(Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    :cond_95
    return-void
.end method

.method public static synthetic j(ZLcom/android/launcher3/iconrender/IIconRenderer;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/iconrender/RenderManager;->lambda$onViewSelectStateChanged$8(ZLcom/android/launcher3/iconrender/IIconRenderer;)V

    return-void
.end method

.method private static synthetic lambda$beforeTextViewOnMeasure$2(Lcom/android/launcher3/BubbleTextView;IILcom/android/launcher3/iconrender/IRenderer;)V
    .registers 4

    invoke-interface {p3, p0, p1, p2}, Lcom/android/launcher3/iconrender/IRenderer;->beforeTextViewOnMeasure(Lcom/android/launcher3/BubbleTextView;II)V

    return-void
.end method

.method private static synthetic lambda$onBindApplicationInfo$4(Lcom/android/launcher3/model/data/AppInfo;Lcom/android/launcher3/iconrender/IIconRenderer;)V
    .registers 2

    invoke-interface {p1, p0}, Lcom/android/launcher3/iconrender/IRenderer;->onBindApplicationInfo(Lcom/android/launcher3/model/data/AppInfo;)V

    return-void
.end method

.method private static synthetic lambda$onBindApplicationInfo$5(Lcom/android/launcher3/model/data/AppInfo;Lcom/android/launcher3/iconrender/ITitleRenderer;)V
    .registers 2

    invoke-interface {p1, p0}, Lcom/android/launcher3/iconrender/IRenderer;->onBindApplicationInfo(Lcom/android/launcher3/model/data/AppInfo;)V

    return-void
.end method

.method private static synthetic lambda$onBindWorkspaceItem$6(Lcom/android/launcher3/model/data/WorkspaceItemInfo;ZLcom/android/launcher3/iconrender/IIconRenderer;)V
    .registers 3

    invoke-interface {p2, p0, p1}, Lcom/android/launcher3/iconrender/IRenderer;->onBindWorkspaceItem(Lcom/android/launcher3/model/data/WorkspaceItemInfo;Z)V

    return-void
.end method

.method private static synthetic lambda$onBindWorkspaceItem$7(Lcom/android/launcher3/model/data/WorkspaceItemInfo;ZLcom/android/launcher3/iconrender/ITitleRenderer;)V
    .registers 3

    invoke-interface {p2, p0, p1}, Lcom/android/launcher3/iconrender/IRenderer;->onBindWorkspaceItem(Lcom/android/launcher3/model/data/WorkspaceItemInfo;Z)V

    return-void
.end method

.method private static synthetic lambda$onTextAppearanceChanged$3(ILcom/android/launcher3/iconrender/IRenderer;)V
    .registers 2

    invoke-interface {p1, p0}, Lcom/android/launcher3/iconrender/IRenderer;->onTextAppearanceChanged(I)V

    return-void
.end method

.method private static synthetic lambda$onViewReset$1(Lcom/android/launcher3/BubbleTextView;Lcom/android/launcher3/iconrender/IRenderer;)V
    .registers 2

    invoke-interface {p1, p0}, Lcom/android/launcher3/iconrender/IRenderer;->onViewReset(Lcom/android/launcher3/BubbleTextView;)V

    return-void
.end method

.method private static synthetic lambda$onViewSelectStateChanged$8(ZLcom/android/launcher3/iconrender/IIconRenderer;)V
    .registers 2

    invoke-interface {p1, p0}, Lcom/android/launcher3/iconrender/IRenderer;->onViewSelectStateChanged(Z)V

    return-void
.end method

.method private static synthetic lambda$onViewSelectStateChanged$9(ZLcom/android/launcher3/iconrender/ITitleRenderer;)V
    .registers 2

    invoke-interface {p1, p0}, Lcom/android/launcher3/iconrender/IRenderer;->onViewSelectStateChanged(Z)V

    return-void
.end method

.method private synthetic lambda$renderIcon$0(ZLandroid/graphics/Canvas;Lcom/android/launcher3/iconrender/IIconRenderer;)V
    .registers 6

    iget-object v0, p0, Lcom/android/launcher3/iconrender/RenderManager;->mHostView:Lcom/android/launcher3/BubbleTextView;

    invoke-interface {p3}, Lcom/android/launcher3/iconrender/IIconRenderer;->getParams()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p3, p0, v0, v1}, Lcom/android/launcher3/iconrender/IIconRenderer;->acceptDraw(Lcom/android/launcher3/iconrender/RenderManager;Lcom/android/launcher3/BubbleTextView;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    return-void

    :cond_d
    if-eqz p1, :cond_1e

    invoke-interface {p3}, Lcom/android/launcher3/iconrender/IIconRenderer;->renderAsBitmapCover()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_1a

    iget-object v0, p0, Lcom/android/launcher3/iconrender/RenderManager;->mPendingRenderDrawables:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1a
    invoke-interface {p3, p2, p0}, Lcom/android/launcher3/iconrender/IIconRenderer;->renderBeforeIconDrawn(Landroid/graphics/Canvas;Lcom/android/launcher3/iconrender/RenderManager;)V

    goto :goto_21

    :cond_1e
    invoke-interface {p3, p2, p0}, Lcom/android/launcher3/iconrender/IIconRenderer;->renderAfterIconDrawn(Landroid/graphics/Canvas;Lcom/android/launcher3/iconrender/RenderManager;)V

    :goto_21
    return-void
.end method

.method public static varargs log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "RenderManager"

    invoke-static {p2, p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_f
    return-void
.end method

.method public static newBuilder()Lcom/android/launcher3/iconrender/RenderManager$Builder;
    .registers 1

    new-instance v0, Lcom/android/launcher3/iconrender/RenderManager$Builder;

    invoke-direct {v0}, Lcom/android/launcher3/iconrender/RenderManager$Builder;-><init>()V

    return-object v0
.end method

.method private updateCoverDrawables(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/drawable/Drawable;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/launcher3/iconrender/RenderManager;->mCurrentIconDrawable:Lcom/oplus/icons/OplusFastBitmapDrawable;

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {v0}, Lcom/oplus/icons/OplusFastBitmapDrawable;->getCoverDrawable()Lcom/oplus/icons/AbstractCoverDrawable;

    move-result-object v0

    if-eqz p1, :cond_24

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_24

    if-eqz v0, :cond_17

    iget-object v1, p0, Lcom/android/launcher3/iconrender/RenderManager;->mLayerCoverDrawable:Lcom/android/launcher3/iconrender/LayerCoverDrawable;

    if-eq v0, v1, :cond_24

    :cond_17
    new-instance v0, Lcom/android/launcher3/iconrender/LayerCoverDrawable;

    invoke-direct {v0}, Lcom/android/launcher3/iconrender/LayerCoverDrawable;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/iconrender/RenderManager;->mLayerCoverDrawable:Lcom/android/launcher3/iconrender/LayerCoverDrawable;

    iget-object v1, p0, Lcom/android/launcher3/iconrender/RenderManager;->mCurrentIconDrawable:Lcom/oplus/icons/OplusFastBitmapDrawable;

    invoke-virtual {v1, v0}, Lcom/oplus/icons/OplusFastBitmapDrawable;->setCoverDrawable(Lcom/oplus/icons/AbstractCoverDrawable;)V

    goto :goto_28

    :cond_24
    check-cast v0, Lcom/android/launcher3/iconrender/LayerCoverDrawable;

    iput-object v0, p0, Lcom/android/launcher3/iconrender/RenderManager;->mLayerCoverDrawable:Lcom/android/launcher3/iconrender/LayerCoverDrawable;

    :goto_28
    iget-object v0, p0, Lcom/android/launcher3/iconrender/RenderManager;->mLayerCoverDrawable:Lcom/android/launcher3/iconrender/LayerCoverDrawable;

    if-nez v0, :cond_2d

    return-void

    :cond_2d
    if-eqz p1, :cond_3b

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3b

    iget-object p0, p0, Lcom/android/launcher3/iconrender/RenderManager;->mLayerCoverDrawable:Lcom/android/launcher3/iconrender/LayerCoverDrawable;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/iconrender/LayerCoverDrawable;->setLayers(Ljava/util/List;)V

    goto :goto_40

    :cond_3b
    iget-object p0, p0, Lcom/android/launcher3/iconrender/RenderManager;->mLayerCoverDrawable:Lcom/android/launcher3/iconrender/LayerCoverDrawable;

    invoke-virtual {p0}, Lcom/android/launcher3/iconrender/LayerCoverDrawable;->clearLayers()V

    :goto_40
    return-void
.end method

.method private validateTitleParams(Lcom/android/launcher3/iconrender/TitleRenderParams;)Z
    .registers 4

    iget-object p0, p1, Lcom/android/launcher3/iconrender/TitleRenderParams;->mItemInfo:Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    if-nez p0, :cond_f

    const/4 p0, 0x0

    new-array p1, p0, [Ljava/lang/Object;

    const-string v0, "RenderManager"

    const-string v1, "err:RenderParams.mItemInfo is null!"

    invoke-static {v0, v1, p1}, Lcom/android/launcher3/iconrender/RenderManager;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return p0

    :cond_f
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public beforeTextViewOnMeasure(Lcom/android/launcher3/BubbleTextView;II)V
    .registers 5

    new-instance v0, Lcom/android/launcher3/iconrender/b;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/launcher3/iconrender/b;-><init>(Lcom/android/launcher3/BubbleTextView;II)V

    invoke-direct {p0, v0}, Lcom/android/launcher3/iconrender/RenderManager;->forEachRenderer(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public findExportImpl(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/launcher3/iconrender/RenderManager;->mExportImplMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentTextAppearance()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/iconrender/RenderManager;->mCurrentTextAppearance:I

    return p0
.end method

.method public getHostView()Lcom/android/launcher3/BubbleTextView;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/iconrender/RenderManager;->mHostView:Lcom/android/launcher3/BubbleTextView;

    return-object p0
.end method

.method public getTitlePrefixDrawableBounds(Ljava/lang/Class;)Landroid/graphics/Rect;
    .registers 5
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

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    if-nez p1, :cond_8

    return-object v0

    :cond_8
    iget-object p0, p0, Lcom/android/launcher3/iconrender/RenderManager;->mTitleRendererList:Ljava/util/List;

    if-nez p0, :cond_17

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string p1, "RenderManager"

    const-string v1, "failed to get prefix drawable bounds, renderer list is empty!"

    invoke-static {p1, v1, p0}, Lcom/android/launcher3/iconrender/RenderManager;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    :cond_17
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/iconrender/ITitleRenderer;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    check-cast v1, Lcom/android/launcher3/iconrender/AbstractTitlePrefixRenderer;

    invoke-virtual {v1}, Lcom/android/launcher3/iconrender/AbstractTitlePrefixRenderer;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_1b

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    :cond_3c
    return-object v0
.end method

.method public handleOnTouchEvent(Lcom/android/launcher3/BubbleTextView;Landroid/view/MotionEvent;)Z
    .registers 6

    iget-object v0, p0, Lcom/android/launcher3/iconrender/RenderManager;->mTitleRendererList:Ljava/util/List;

    const/4 v1, 0x1

    if-eqz v0, :cond_1c

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/iconrender/ITitleRenderer;

    invoke-interface {v2, p1, p2}, Lcom/android/launcher3/icons/touch/ITouchProcessor;->handleOnTouchEvent(Lcom/android/launcher3/BubbleTextView;Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_9

    return v1

    :cond_1c
    iget-object p0, p0, Lcom/android/launcher3/iconrender/RenderManager;->mIconRendererList:Ljava/util/List;

    if-eqz p0, :cond_37

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_24
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_37

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/iconrender/IIconRenderer;

    invoke-interface {v0, p1, p2}, Lcom/android/launcher3/icons/touch/ITouchProcessor;->handleOnTouchEvent(Lcom/android/launcher3/BubbleTextView;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_24

    return v1

    :cond_37
    const/4 p0, 0x0

    return p0
.end method

.method public onBindApplicationInfo(Lcom/android/launcher3/model/data/AppInfo;)V
    .registers 5

    iget-object v0, p0, Lcom/android/launcher3/iconrender/RenderManager;->mIconRendererList:Ljava/util/List;

    if-eqz v0, :cond_d

    new-instance v1, Lcom/android/launcher3/allapps/b;

    const/4 v2, 0x2

    invoke-direct {v1, p1, v2}, Lcom/android/launcher3/allapps/b;-><init>(Lcom/android/launcher3/model/data/AppInfo;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    :cond_d
    iget-object p0, p0, Lcom/android/launcher3/iconrender/RenderManager;->mTitleRendererList:Ljava/util/List;

    if-eqz p0, :cond_1a

    new-instance v0, Lcom/android/launcher3/allapps/b;

    const/4 v1, 0x3

    invoke-direct {v0, p1, v1}, Lcom/android/launcher3/allapps/b;-><init>(Lcom/android/launcher3/model/data/AppInfo;I)V

    invoke-interface {p0, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    :cond_1a
    return-void
.end method

.method public onBindWorkspaceItem(Lcom/android/launcher3/model/data/WorkspaceItemInfo;Z)V
    .registers 6

    iget-object v0, p0, Lcom/android/launcher3/iconrender/RenderManager;->mIconRendererList:Ljava/util/List;

    if-eqz v0, :cond_d

    new-instance v1, Lcom/android/launcher3/iconrender/c;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, v2}, Lcom/android/launcher3/iconrender/c;-><init>(Lcom/android/launcher3/model/data/WorkspaceItemInfo;ZI)V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    :cond_d
    iget-object p0, p0, Lcom/android/launcher3/iconrender/RenderManager;->mTitleRendererList:Ljava/util/List;

    if-eqz p0, :cond_1a

    new-instance v0, Lcom/android/launcher3/iconrender/c;

    const/4 v1, 0x1

    invoke-direct {v0, p1, p2, v1}, Lcom/android/launcher3/iconrender/c;-><init>(Lcom/android/launcher3/model/data/WorkspaceItemInfo;ZI)V

    invoke-interface {p0, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    :cond_1a
    return-void
.end method

.method public onIconVisibleChanged(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher3/iconrender/RenderManager;->mIsIconVisible:Z

    return-void
.end method

.method public onInterceptSetIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    instance-of v0, p1, Lcom/oplus/icons/OplusFastBitmapDrawable;

    if-eqz v0, :cond_9

    check-cast p1, Lcom/oplus/icons/OplusFastBitmapDrawable;

    iput-object p1, p0, Lcom/android/launcher3/iconrender/RenderManager;->mCurrentIconDrawable:Lcom/oplus/icons/OplusFastBitmapDrawable;

    goto :goto_c

    :cond_9
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/launcher3/iconrender/RenderManager;->mCurrentIconDrawable:Lcom/oplus/icons/OplusFastBitmapDrawable;

    :goto_c
    return-void
.end method

.method public onTextAlphaChange(F)V
    .registers 3

    iget-object p0, p0, Lcom/android/launcher3/iconrender/RenderManager;->mTitleRendererList:Ljava/util/List;

    if-eqz p0, :cond_18

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/iconrender/ITitleRenderer;

    invoke-interface {v0, p1}, Lcom/android/launcher3/iconrender/ITitleRenderer;->onTextAlphaChange(F)V

    goto :goto_8

    :cond_18
    return-void
.end method

.method public onTextAppearanceChanged(I)V
    .registers 4

    iput p1, p0, Lcom/android/launcher3/iconrender/RenderManager;->mCurrentTextAppearance:I

    new-instance v0, Lcom/android/launcher3/iconrender/a;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/launcher3/iconrender/a;-><init>(II)V

    invoke-direct {p0, v0}, Lcom/android/launcher3/iconrender/RenderManager;->forEachRenderer(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onViewReset(Lcom/android/launcher3/BubbleTextView;)V
    .registers 3

    new-instance v0, Landroidx/core/location/a;

    invoke-direct {v0, p1}, Landroidx/core/location/a;-><init>(Lcom/android/launcher3/BubbleTextView;)V

    invoke-direct {p0, v0}, Lcom/android/launcher3/iconrender/RenderManager;->forEachRenderer(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onViewSelectStateChanged(Z)V
    .registers 5

    iget-object v0, p0, Lcom/android/launcher3/iconrender/RenderManager;->mIconRendererList:Ljava/util/List;

    if-eqz v0, :cond_d

    new-instance v1, Lcom/android/launcher/l;

    const/4 v2, 0x1

    invoke-direct {v1, p1, v2}, Lcom/android/launcher/l;-><init>(ZI)V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    :cond_d
    iget-object p0, p0, Lcom/android/launcher3/iconrender/RenderManager;->mTitleRendererList:Ljava/util/List;

    if-eqz p0, :cond_1a

    new-instance v0, Lcom/android/launcher/l;

    const/4 v1, 0x2

    invoke-direct {v0, p1, v1}, Lcom/android/launcher/l;-><init>(ZI)V

    invoke-interface {p0, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    :cond_1a
    return-void
.end method

.method public registerExport(Ljava/lang/Class;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/launcher3/iconrender/RenderManager;->mExportImplMap:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public renderIcon(Landroid/graphics/Canvas;Z)V
    .registers 5

    iget-boolean v0, p0, Lcom/android/launcher3/iconrender/RenderManager;->mIsIconVisible:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/android/launcher3/iconrender/RenderManager;->mIconRendererList:Ljava/util/List;

    if-nez v0, :cond_a

    return-void

    :cond_a
    iget-object v0, p0, Lcom/android/launcher3/iconrender/RenderManager;->mPendingRenderDrawables:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/android/launcher3/iconrender/RenderManager;->mIconRendererList:Ljava/util/List;

    new-instance v1, Lcom/android/launcher3/iconrender/d;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/launcher3/iconrender/d;-><init>(Lcom/android/launcher3/iconrender/RenderManager;ZLandroid/graphics/Canvas;)V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    if-eqz p2, :cond_20

    iget-object p1, p0, Lcom/android/launcher3/iconrender/RenderManager;->mPendingRenderDrawables:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/android/launcher3/iconrender/RenderManager;->updateCoverDrawables(Ljava/util/List;)V

    :cond_20
    return-void
.end method

.method public renderTitle(Ljava/lang/CharSequence;Lcom/android/launcher3/iconrender/TitleRenderParams;)Lcom/android/launcher3/iconrender/TitleRenderResult;
    .registers 11

    iget-boolean v0, p0, Lcom/android/launcher3/iconrender/RenderManager;->mEnableTitleRender:Z

    const/4 v1, 0x0

    const-string v2, "RenderManager"

    const/4 v3, 0x0

    if-nez v0, :cond_10

    new-array p0, v3, [Ljava/lang/Object;

    const-string p1, "Title render is disabled."

    invoke-static {v2, p1, p0}, Lcom/android/launcher3/iconrender/RenderManager;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    :cond_10
    if-nez p1, :cond_1a

    new-array p0, v3, [Ljava/lang/Object;

    const-string p1, "Title is null!"

    invoke-static {v2, p1, p0}, Lcom/android/launcher3/iconrender/RenderManager;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    :cond_1a
    invoke-direct {p0, p2}, Lcom/android/launcher3/iconrender/RenderManager;->validateTitleParams(Lcom/android/launcher3/iconrender/TitleRenderParams;)Z

    move-result v0

    if-nez v0, :cond_21

    return-object v1

    :cond_21
    iget-boolean v0, p2, Lcom/android/launcher3/iconrender/TitleRenderParams;->mShouldTextBeVisible:Z

    if-nez v0, :cond_35

    new-array p0, v3, [Ljava/lang/Object;

    const-string/jumbo p1, "shouldTextBeVisible is false!"

    invoke-static {v2, p1, p0}, Lcom/android/launcher3/iconrender/RenderManager;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance p0, Lcom/android/launcher3/iconrender/TitleRenderResult;

    const-string p1, ""

    invoke-direct {p0, p1}, Lcom/android/launcher3/iconrender/TitleRenderResult;-><init>(Ljava/lang/CharSequence;)V

    return-object p0

    :cond_35
    iget-object v0, p0, Lcom/android/launcher3/iconrender/RenderManager;->mTitleRendererList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3b
    :goto_3b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/iconrender/ITitleRenderer;

    iget-object v5, p2, Lcom/android/launcher3/iconrender/TitleRenderParams;->mItemInfo:Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    if-eqz v5, :cond_5a

    iget-object v5, p0, Lcom/android/launcher3/iconrender/RenderManager;->mHostView:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p2, Lcom/android/launcher3/iconrender/TitleRenderParams;->mItemInfo:Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    invoke-interface {v4, p0, v5, v6, p2}, Lcom/android/launcher3/iconrender/ITitleRenderer;->accept(Lcom/android/launcher3/iconrender/RenderManager;Landroid/content/Context;Lcom/android/launcher3/model/data/ItemInfoWithIcon;Lcom/android/launcher3/iconrender/TitleRenderParams;)Z

    move-result v5

    if-nez v5, :cond_5a

    goto :goto_3b

    :cond_5a
    iget-object v1, p0, Lcom/android/launcher3/iconrender/RenderManager;->mHostView:Lcom/android/launcher3/BubbleTextView;

    invoke-interface {v4, v1, p1, p2}, Lcom/android/launcher3/iconrender/ITitleRenderer;->render(Landroid/widget/TextView;Ljava/lang/CharSequence;Lcom/android/launcher3/iconrender/TitleRenderParams;)Lcom/android/launcher3/iconrender/TitleRenderResult;

    move-result-object v1

    const/4 v5, 0x1

    const/4 v6, 0x2

    if-eqz v1, :cond_85

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p0

    if-eqz p0, :cond_7e

    new-array p0, v6, [Ljava/lang/Object;

    aput-object v1, p0, v3

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p0, v5

    const-string/jumbo p1, "title render finish,result:%s, renderer:%s"

    invoke-static {v2, p1, p0}, Lcom/android/launcher3/iconrender/RenderManager;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_7e
    iget-boolean p0, p2, Lcom/android/launcher3/iconrender/TitleRenderParams;->mForceNotInterceptApplyLabel:Z

    if-eqz p0, :cond_a0

    iput-boolean v3, v1, Lcom/android/launcher3/iconrender/TitleRenderResult;->interceptApplyLabel:Z

    goto :goto_a0

    :cond_85
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v7

    if-eqz v7, :cond_3b

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v1, v6, v3

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v5

    const-string/jumbo v4, "title render finish without result! renderer:%s"

    invoke-static {v2, v4, v6}, Lcom/android/launcher3/iconrender/RenderManager;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3b

    :cond_a0
    :goto_a0
    return-object v1
.end method

.method public requestInvalidate()V
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/iconrender/RenderManager;->mHostView:Lcom/android/launcher3/BubbleTextView;

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    :cond_7
    return-void
.end method

.method public requestRenderTitle()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher3/iconrender/RenderManager;->mHostView:Lcom/android/launcher3/BubbleTextView;

    if-eqz v0, :cond_19

    invoke-virtual {v0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    if-eqz v0, :cond_19

    iget-object p0, p0, Lcom/android/launcher3/iconrender/RenderManager;->mHostView:Lcom/android/launcher3/BubbleTextView;

    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    invoke-virtual {p0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    invoke-interface {v0, p0}, Lcom/android/launcher3/IBubbleTextViewExt;->applyLabel(Lcom/android/launcher3/model/data/ItemInfoWithIcon;)V

    :cond_19
    return-void
.end method
