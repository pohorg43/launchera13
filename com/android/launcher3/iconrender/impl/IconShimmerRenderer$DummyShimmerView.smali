.class public Lcom/android/launcher3/iconrender/impl/IconShimmerRenderer$DummyShimmerView;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher/shimmer/IShimmerView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/iconrender/impl/IconShimmerRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DummyShimmerView"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clearShimmerData()V
    .registers 1

    return-void
.end method

.method public getIdentity()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public getShimmerRect()Landroid/graphics/Rect;
    .registers 1

    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0}, Landroid/graphics/Rect;-><init>()V

    return-object p0
.end method

.method public isShimmerViewShowingNow()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public postInvalidate()V
    .registers 1

    return-void
.end method

.method public setIdentity(I)V
    .registers 2

    return-void
.end method

.method public startShimmer(Ljava/util/function/Function;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "Lcom/android/launcher/shimmer/IShimmerView;",
            "Lcom/android/launcher/shimmer/ShimmerDrawable;",
            ">;)V"
        }
    .end annotation

    return-void
.end method
