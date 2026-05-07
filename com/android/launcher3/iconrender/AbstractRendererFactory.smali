.class public abstract Lcom/android/launcher3/iconrender/AbstractRendererFactory;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract createIconRenderer(Ljava/lang/Class;Landroid/content/Context;Lcom/android/launcher3/iconrender/RenderManager;)Lcom/android/launcher3/iconrender/IIconRenderer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/android/launcher3/iconrender/IIconRenderer;",
            ">;",
            "Landroid/content/Context;",
            "Lcom/android/launcher3/iconrender/RenderManager;",
            ")",
            "Lcom/android/launcher3/iconrender/IIconRenderer;"
        }
    .end annotation
.end method

.method public abstract createTitleRenderer(Ljava/lang/Class;Landroid/content/Context;Lcom/android/launcher3/iconrender/RenderManager;)Lcom/android/launcher3/iconrender/ITitleRenderer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/android/launcher3/iconrender/ITitleRenderer;",
            ">;",
            "Landroid/content/Context;",
            "Lcom/android/launcher3/iconrender/RenderManager;",
            ")",
            "Lcom/android/launcher3/iconrender/ITitleRenderer;"
        }
    .end annotation
.end method
