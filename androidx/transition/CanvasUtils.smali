.class Landroidx/transition/CanvasUtils;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static sInorderBarrierMethod:Ljava/lang/reflect/Method;

.field private static sOrderMethodsFetched:Z

.field private static sReorderBarrierMethod:Ljava/lang/reflect/Method;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static enableZ(Landroid/graphics/Canvas;Z)V
    .registers 2
    .param p0  # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SoonBlockedPrivateApi"
        }
    .end annotation

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Landroid/graphics/Canvas;->enableZ()V

    goto :goto_9

    :cond_6
    invoke-virtual {p0}, Landroid/graphics/Canvas;->disableZ()V

    :goto_9
    return-void
.end method
