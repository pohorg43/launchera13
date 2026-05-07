.class public final synthetic Lcom/android/launcher/shimmer/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic a:Lcom/android/launcher/shimmer/IconShimmerManager$ShimmerViewEntry;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher/shimmer/IconShimmerManager$ShimmerViewEntry;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/shimmer/c;->a:Lcom/android/launcher/shimmer/IconShimmerManager$ShimmerViewEntry;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 2

    iget-object p0, p0, Lcom/android/launcher/shimmer/c;->a:Lcom/android/launcher/shimmer/IconShimmerManager$ShimmerViewEntry;

    check-cast p1, Lcom/android/launcher/shimmer/IconShimmerManager$ShimmerViewEntry;

    invoke-static {p0, p1}, Lcom/android/launcher/shimmer/IconShimmerManager;->d(Lcom/android/launcher/shimmer/IconShimmerManager$ShimmerViewEntry;Lcom/android/launcher/shimmer/IconShimmerManager$ShimmerViewEntry;)Z

    move-result p0

    return p0
.end method
