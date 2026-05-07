.class public final Lcom/android/launcher3/iconrender/RenderManager$Builder;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/iconrender/RenderManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mEnableTitleRender:Z

.field private mHostView:Lcom/android/launcher3/BubbleTextView;

.field private mIconRendererClassList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/android/launcher3/iconrender/IIconRenderer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mRendererFactory:Lcom/android/launcher3/iconrender/AbstractRendererFactory;

.field private mTitleRendererClassList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/android/launcher3/iconrender/ITitleRenderer;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/iconrender/RenderManager$Builder;->mEnableTitleRender:Z

    new-instance v0, Lcom/android/launcher3/iconrender/impl/DefaultRendererFactory;

    invoke-direct {v0}, Lcom/android/launcher3/iconrender/impl/DefaultRendererFactory;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/iconrender/RenderManager$Builder;->mRendererFactory:Lcom/android/launcher3/iconrender/AbstractRendererFactory;

    return-void
.end method

.method public static synthetic access$000(Lcom/android/launcher3/iconrender/RenderManager$Builder;)Lcom/android/launcher3/BubbleTextView;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/iconrender/RenderManager$Builder;->mHostView:Lcom/android/launcher3/BubbleTextView;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/launcher3/iconrender/RenderManager$Builder;)Lcom/android/launcher3/iconrender/AbstractRendererFactory;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/iconrender/RenderManager$Builder;->mRendererFactory:Lcom/android/launcher3/iconrender/AbstractRendererFactory;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/android/launcher3/iconrender/RenderManager$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/iconrender/RenderManager$Builder;->mEnableTitleRender:Z

    return p0
.end method

.method public static synthetic access$300(Lcom/android/launcher3/iconrender/RenderManager$Builder;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/iconrender/RenderManager$Builder;->mTitleRendererClassList:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/android/launcher3/iconrender/RenderManager$Builder;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/iconrender/RenderManager$Builder;->mIconRendererClassList:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public addIconRenderer(Ljava/lang/Class;)Lcom/android/launcher3/iconrender/RenderManager$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/android/launcher3/iconrender/IIconRenderer;",
            ">;)",
            "Lcom/android/launcher3/iconrender/RenderManager$Builder;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/launcher3/iconrender/RenderManager$Builder;->mIconRendererClassList:Ljava/util/List;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/iconrender/RenderManager$Builder;->mIconRendererClassList:Ljava/util/List;

    :cond_b
    iget-object v0, p0, Lcom/android/launcher3/iconrender/RenderManager$Builder;->mIconRendererClassList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addTitleRenderer(Ljava/lang/Class;)Lcom/android/launcher3/iconrender/RenderManager$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/android/launcher3/iconrender/ITitleRenderer;",
            ">;)",
            "Lcom/android/launcher3/iconrender/RenderManager$Builder;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/launcher3/iconrender/RenderManager$Builder;->mTitleRendererClassList:Ljava/util/List;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/iconrender/RenderManager$Builder;->mTitleRendererClassList:Ljava/util/List;

    :cond_b
    iget-object v0, p0, Lcom/android/launcher3/iconrender/RenderManager$Builder;->mTitleRendererClassList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public build()Lcom/android/launcher3/iconrender/RenderManager;
    .registers 3

    new-instance v0, Lcom/android/launcher3/iconrender/RenderManager;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/launcher3/iconrender/RenderManager;-><init>(Lcom/android/launcher3/iconrender/RenderManager$Builder;Lcom/android/launcher3/iconrender/RenderManager$1;)V

    return-object v0
.end method

.method public setRendererFactory(Lcom/android/launcher3/iconrender/AbstractRendererFactory;)Lcom/android/launcher3/iconrender/RenderManager$Builder;
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/iconrender/RenderManager$Builder;->mRendererFactory:Lcom/android/launcher3/iconrender/AbstractRendererFactory;

    return-object p0
.end method

.method public setTitleRenderDisable()Lcom/android/launcher3/iconrender/RenderManager$Builder;
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/iconrender/RenderManager$Builder;->mEnableTitleRender:Z

    return-object p0
.end method

.method public setTitleRenderEnable()Lcom/android/launcher3/iconrender/RenderManager$Builder;
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/iconrender/RenderManager$Builder;->mEnableTitleRender:Z

    return-object p0
.end method

.method public withHostView(Lcom/android/launcher3/BubbleTextView;)Lcom/android/launcher3/iconrender/RenderManager$Builder;
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/iconrender/RenderManager$Builder;->mHostView:Lcom/android/launcher3/BubbleTextView;

    return-object p0
.end method
