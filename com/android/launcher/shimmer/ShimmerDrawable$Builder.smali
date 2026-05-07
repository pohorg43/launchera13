.class public Lcom/android/launcher/shimmer/ShimmerDrawable$Builder;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher/shimmer/ShimmerDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/android/launcher/shimmer/IShimmerView;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mAngle:I

.field private mListener:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final mView:Lcom/android/launcher/shimmer/IShimmerView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/launcher/shimmer/IShimmerView;)V
    .registers 2
    .param p1  # Lcom/android/launcher/shimmer/IShimmerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/shimmer/ShimmerDrawable$Builder;->mView:Lcom/android/launcher/shimmer/IShimmerView;

    return-void
.end method

.method public static synthetic access$000(Lcom/android/launcher/shimmer/ShimmerDrawable$Builder;)Lcom/android/launcher/shimmer/IShimmerView;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/shimmer/ShimmerDrawable$Builder;->mView:Lcom/android/launcher/shimmer/IShimmerView;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/launcher/shimmer/ShimmerDrawable$Builder;)Ljava/util/function/Consumer;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/shimmer/ShimmerDrawable$Builder;->mListener:Ljava/util/function/Consumer;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/android/launcher/shimmer/ShimmerDrawable$Builder;)I
    .registers 1

    iget p0, p0, Lcom/android/launcher/shimmer/ShimmerDrawable$Builder;->mAngle:I

    return p0
.end method


# virtual methods
.method public build()Lcom/android/launcher/shimmer/ShimmerDrawable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/launcher/shimmer/ShimmerDrawable<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/android/launcher/shimmer/ShimmerDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/launcher/shimmer/ShimmerDrawable;-><init>(Lcom/android/launcher/shimmer/ShimmerDrawable$Builder;Lcom/android/launcher/shimmer/ShimmerDrawable$1;)V

    return-object v0
.end method

.method public setAngle(I)Lcom/android/launcher/shimmer/ShimmerDrawable$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/android/launcher/shimmer/ShimmerDrawable$Builder<",
            "TT;>;"
        }
    .end annotation

    iput p1, p0, Lcom/android/launcher/shimmer/ShimmerDrawable$Builder;->mAngle:I

    return-object p0
.end method

.method public setFinishListener(Ljava/util/function/Consumer;)Lcom/android/launcher/shimmer/ShimmerDrawable$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "TT;>;)",
            "Lcom/android/launcher/shimmer/ShimmerDrawable$Builder<",
            "TT;>;"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/launcher/shimmer/ShimmerDrawable$Builder;->mListener:Ljava/util/function/Consumer;

    return-object p0
.end method
