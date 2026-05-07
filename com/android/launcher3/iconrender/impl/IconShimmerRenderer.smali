.class public Lcom/android/launcher3/iconrender/impl/IconShimmerRenderer;
.super Lcom/android/launcher3/iconrender/AbstractIconRenderer;
.source ""

# interfaces
.implements Lcom/android/launcher/shimmer/IShimmerView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/iconrender/impl/IconShimmerRenderer$DummyShimmerView;,
        Lcom/android/launcher3/iconrender/impl/IconShimmerRenderer$IShimmerViewProvider;,
        Lcom/android/launcher3/iconrender/impl/IconShimmerRenderer$GetGlobalVisibleRectTask;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/launcher3/iconrender/AbstractIconRenderer<",
        "Lcom/android/launcher3/iconrender/IconRenderParams;",
        ">;",
        "Lcom/android/launcher/shimmer/IShimmerView;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "IconShimmerRenderer"


# instance fields
.field private mIdentity:I

.field private mSaveCount:I

.field private mShimmerDrawable:Lcom/android/launcher/shimmer/ShimmerDrawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/launcher3/iconrender/RenderManager;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/iconrender/AbstractIconRenderer;-><init>(Landroid/content/Context;Lcom/android/launcher3/iconrender/RenderManager;)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/launcher3/iconrender/impl/IconShimmerRenderer;->mIdentity:I

    const-class p1, Lcom/android/launcher3/iconrender/impl/IconShimmerRenderer$IShimmerViewProvider;

    new-instance v0, Lcom/android/launcher3/iconrender/impl/c;

    invoke-direct {v0, p0}, Lcom/android/launcher3/iconrender/impl/c;-><init>(Lcom/android/launcher3/iconrender/impl/IconShimmerRenderer;)V

    invoke-virtual {p2, p1, v0}, Lcom/android/launcher3/iconrender/RenderManager;->registerExport(Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/iconrender/impl/IconShimmerRenderer;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher3/iconrender/impl/IconShimmerRenderer;->lambda$clearShimmerData$2()V

    return-void
.end method

.method public static synthetic access$100(Lcom/android/launcher3/iconrender/impl/IconShimmerRenderer;)Lcom/android/launcher3/iconrender/RenderManager;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/iconrender/AbstractRenderer;->mRenderManager:Lcom/android/launcher3/iconrender/RenderManager;

    return-object p0
.end method

.method public static synthetic b(Lcom/android/launcher3/iconrender/impl/IconShimmerRenderer;Ljava/util/function/Function;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/iconrender/impl/IconShimmerRenderer;->lambda$startShimmer$1(Ljava/util/function/Function;)V

    return-void
.end method

.method public static synthetic c(Lcom/android/launcher3/iconrender/impl/IconShimmerRenderer;)Lcom/android/launcher/shimmer/IShimmerView;
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher3/iconrender/impl/IconShimmerRenderer;->lambda$new$0()Lcom/android/launcher/shimmer/IShimmerView;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$clearShimmerData$2()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher3/iconrender/impl/IconShimmerRenderer;->mShimmerDrawable:Lcom/android/launcher/shimmer/ShimmerDrawable;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/android/launcher/shimmer/ShimmerDrawable;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/iconrender/impl/IconShimmerRenderer;->mShimmerDrawable:Lcom/android/launcher/shimmer/ShimmerDrawable;

    :cond_a
    return-void
.end method

.method private synthetic lambda$new$0()Lcom/android/launcher/shimmer/IShimmerView;
    .registers 1

    return-object p0
.end method

.method private synthetic lambda$startShimmer$1(Ljava/util/function/Function;)V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/iconrender/impl/IconShimmerRenderer;->mShimmerDrawable:Lcom/android/launcher/shimmer/ShimmerDrawable;

    if-nez v0, :cond_c

    invoke-interface {p1, p0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher/shimmer/ShimmerDrawable;

    iput-object p1, p0, Lcom/android/launcher3/iconrender/impl/IconShimmerRenderer;->mShimmerDrawable:Lcom/android/launcher/shimmer/ShimmerDrawable;

    :cond_c
    iget-object p0, p0, Lcom/android/launcher3/iconrender/impl/IconShimmerRenderer;->mShimmerDrawable:Lcom/android/launcher/shimmer/ShimmerDrawable;

    invoke-virtual {p0}, Lcom/android/launcher/shimmer/ShimmerDrawable;->startShimmer()V

    return-void
.end method


# virtual methods
.method public acceptDraw(Lcom/android/launcher3/iconrender/RenderManager;Lcom/android/launcher3/BubbleTextView;Lcom/android/launcher3/iconrender/IconRenderParams;)Z
    .registers 4

    invoke-virtual {p0}, Lcom/android/launcher3/iconrender/impl/IconShimmerRenderer;->getShimmerDrawable()Lcom/android/launcher/shimmer/ShimmerDrawable;

    move-result-object p0

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public bridge synthetic acceptDraw(Lcom/android/launcher3/iconrender/RenderManager;Lcom/android/launcher3/BubbleTextView;Ljava/lang/Object;)Z
    .registers 4

    check-cast p3, Lcom/android/launcher3/iconrender/IconRenderParams;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/launcher3/iconrender/impl/IconShimmerRenderer;->acceptDraw(Lcom/android/launcher3/iconrender/RenderManager;Lcom/android/launcher3/BubbleTextView;Lcom/android/launcher3/iconrender/IconRenderParams;)Z

    move-result p0

    return p0
.end method

.method public clearShimmerData()V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/iconrender/AbstractRenderer;->mRenderManager:Lcom/android/launcher3/iconrender/RenderManager;

    invoke-virtual {v0}, Lcom/android/launcher3/iconrender/RenderManager;->getHostView()Lcom/android/launcher3/BubbleTextView;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/card/seed/a;

    invoke-direct {v1, p0}, Lcom/android/launcher3/card/seed/a;-><init>(Lcom/android/launcher3/iconrender/impl/IconShimmerRenderer;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public getIdentity()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/iconrender/impl/IconShimmerRenderer;->mIdentity:I

    return p0
.end method

.method public getShimmerDrawable()Lcom/android/launcher/shimmer/ShimmerDrawable;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/iconrender/impl/IconShimmerRenderer;->mShimmerDrawable:Lcom/android/launcher/shimmer/ShimmerDrawable;

    return-object p0
.end method

.method public getShimmerRect()Landroid/graphics/Rect;
    .registers 2

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object p0, p0, Lcom/android/launcher3/iconrender/AbstractRenderer;->mRenderManager:Lcom/android/launcher3/iconrender/RenderManager;

    invoke-virtual {p0}, Lcom/android/launcher3/iconrender/RenderManager;->getHostView()Lcom/android/launcher3/BubbleTextView;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/BubbleTextView;->getIconBounds(Landroid/graphics/Rect;)V

    return-object v0
.end method

.method public isShimmerViewShowingNow()Z
    .registers 5

    iget-object v0, p0, Lcom/android/launcher3/iconrender/AbstractRenderer;->mRenderManager:Lcom/android/launcher3/iconrender/RenderManager;

    invoke-virtual {v0}, Lcom/android/launcher3/iconrender/RenderManager;->getHostView()Lcom/android/launcher3/BubbleTextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->isShown()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_5c

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    if-ne v1, v3, :cond_3a

    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_5c

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    mul-int/2addr p0, v1

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v0

    mul-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    if-le p0, v0, :cond_39

    const/4 v2, 0x1

    :cond_39
    return v2

    :cond_3a
    new-instance v0, Lcom/android/launcher3/iconrender/impl/IconShimmerRenderer$GetGlobalVisibleRectTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/launcher3/iconrender/impl/IconShimmerRenderer$GetGlobalVisibleRectTask;-><init>(Lcom/android/launcher3/iconrender/impl/IconShimmerRenderer;Lcom/android/launcher3/iconrender/impl/IconShimmerRenderer$1;)V

    new-instance p0, Ljava/util/concurrent/FutureTask;

    invoke-direct {p0, v0}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    sget-object v0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    :try_start_4a
    invoke-virtual {p0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_54} :catch_55

    goto :goto_5c

    :catch_55
    const-string p0, "IconShimmerRenderer"

    const-string v0, "isShimmerViewShowing error"

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5c
    :goto_5c
    return v2
.end method

.method public onBindApplicationInfo(Lcom/android/launcher3/model/data/AppInfo;)V
    .registers 3

    invoke-static {}, Lcom/android/launcher/shimmer/IconShimmerManager;->getInstance()Lcom/android/launcher/shimmer/IconShimmerManager;

    move-result-object p1

    new-instance v0, Ljava/lang/ref/WeakReference;

    iget-object p0, p0, Lcom/android/launcher3/iconrender/AbstractRenderer;->mRenderManager:Lcom/android/launcher3/iconrender/RenderManager;

    invoke-virtual {p0}, Lcom/android/launcher3/iconrender/RenderManager;->getHostView()Lcom/android/launcher3/BubbleTextView;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    const/4 p0, 0x5

    invoke-virtual {p1, p0, v0}, Lcom/android/launcher/shimmer/IconShimmerManager;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public onBindWorkspaceItem(Lcom/android/launcher3/model/data/WorkspaceItemInfo;Z)V
    .registers 3

    invoke-static {}, Lcom/android/launcher/shimmer/IconShimmerManager;->getInstance()Lcom/android/launcher/shimmer/IconShimmerManager;

    move-result-object p1

    new-instance p2, Ljava/lang/ref/WeakReference;

    iget-object p0, p0, Lcom/android/launcher3/iconrender/AbstractRenderer;->mRenderManager:Lcom/android/launcher3/iconrender/RenderManager;

    invoke-virtual {p0}, Lcom/android/launcher3/iconrender/RenderManager;->getHostView()Lcom/android/launcher3/BubbleTextView;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    const/4 p0, 0x4

    invoke-virtual {p1, p0, p2}, Lcom/android/launcher/shimmer/IconShimmerManager;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public postInvalidate()V
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/iconrender/AbstractRenderer;->mRenderManager:Lcom/android/launcher3/iconrender/RenderManager;

    invoke-virtual {p0}, Lcom/android/launcher3/iconrender/RenderManager;->getHostView()Lcom/android/launcher3/BubbleTextView;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/TextView;->postInvalidate()V

    return-void
.end method

.method public renderAfterIconDrawn(Landroid/graphics/Canvas;Lcom/android/launcher3/iconrender/RenderManager;)V
    .registers 3

    iget-object p2, p0, Lcom/android/launcher3/iconrender/impl/IconShimmerRenderer;->mShimmerDrawable:Lcom/android/launcher/shimmer/ShimmerDrawable;

    if-eqz p2, :cond_7

    invoke-virtual {p2, p1}, Lcom/android/launcher/shimmer/ShimmerDrawable;->drawShimmer(Landroid/graphics/Canvas;)V

    :cond_7
    iget p2, p0, Lcom/android/launcher3/iconrender/impl/IconShimmerRenderer;->mSaveCount:I

    if-lez p2, :cond_11

    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/launcher3/iconrender/impl/IconShimmerRenderer;->mSaveCount:I

    :cond_11
    return-void
.end method

.method public renderAsBitmapCover()Landroid/graphics/drawable/Drawable;
    .registers 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public renderBeforeIconDrawn(Landroid/graphics/Canvas;Lcom/android/launcher3/iconrender/RenderManager;)V
    .registers 3

    iget-object p2, p0, Lcom/android/launcher3/iconrender/impl/IconShimmerRenderer;->mShimmerDrawable:Lcom/android/launcher/shimmer/ShimmerDrawable;

    if-eqz p2, :cond_b

    const/4 p2, 0x0

    invoke-virtual {p1, p2, p2}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/iconrender/impl/IconShimmerRenderer;->mSaveCount:I

    :cond_b
    return-void
.end method

.method public setIdentity(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/iconrender/impl/IconShimmerRenderer;->mIdentity:I

    return-void
.end method

.method public startShimmer(Ljava/util/function/Function;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "Lcom/android/launcher/shimmer/IShimmerView;",
            "Lcom/android/launcher/shimmer/ShimmerDrawable;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/launcher3/iconrender/AbstractRenderer;->mRenderManager:Lcom/android/launcher3/iconrender/RenderManager;

    invoke-virtual {v0}, Lcom/android/launcher3/iconrender/RenderManager;->getHostView()Lcom/android/launcher3/BubbleTextView;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/dragndrop/m;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher3/dragndrop/m;-><init>(Lcom/android/launcher3/iconrender/impl/IconShimmerRenderer;Ljava/util/function/Function;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
