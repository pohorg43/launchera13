.class Lcom/android/launcher3/iconrender/impl/IconShimmerRenderer$GetGlobalVisibleRectTask;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/iconrender/impl/IconShimmerRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GetGlobalVisibleRectTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public mRect:Landroid/graphics/Rect;

.field public final synthetic this$0:Lcom/android/launcher3/iconrender/impl/IconShimmerRenderer;


# direct methods
.method private constructor <init>(Lcom/android/launcher3/iconrender/impl/IconShimmerRenderer;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/iconrender/impl/IconShimmerRenderer$GetGlobalVisibleRectTask;->this$0:Lcom/android/launcher3/iconrender/impl/IconShimmerRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/iconrender/impl/IconShimmerRenderer$GetGlobalVisibleRectTask;->mRect:Landroid/graphics/Rect;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/iconrender/impl/IconShimmerRenderer;Lcom/android/launcher3/iconrender/impl/IconShimmerRenderer$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/launcher3/iconrender/impl/IconShimmerRenderer$GetGlobalVisibleRectTask;-><init>(Lcom/android/launcher3/iconrender/impl/IconShimmerRenderer;)V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Boolean;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/launcher3/iconrender/impl/IconShimmerRenderer$GetGlobalVisibleRectTask;->this$0:Lcom/android/launcher3/iconrender/impl/IconShimmerRenderer;

    invoke-static {v0}, Lcom/android/launcher3/iconrender/impl/IconShimmerRenderer;->access$100(Lcom/android/launcher3/iconrender/impl/IconShimmerRenderer;)Lcom/android/launcher3/iconrender/RenderManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/iconrender/RenderManager;->getHostView()Lcom/android/launcher3/BubbleTextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/iconrender/impl/IconShimmerRenderer$GetGlobalVisibleRectTask;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_34

    iget-object v1, p0, Lcom/android/launcher3/iconrender/impl/IconShimmerRenderer$GetGlobalVisibleRectTask;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object p0, p0, Lcom/android/launcher3/iconrender/impl/IconShimmerRenderer$GetGlobalVisibleRectTask;->mRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    mul-int/2addr p0, v1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    mul-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    if-le p0, v0, :cond_2e

    const/4 p0, 0x1

    goto :goto_2f

    :cond_2e
    const/4 p0, 0x0

    :goto_2f
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_34
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/launcher3/iconrender/impl/IconShimmerRenderer$GetGlobalVisibleRectTask;->call()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
