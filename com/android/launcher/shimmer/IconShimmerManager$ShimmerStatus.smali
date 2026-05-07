.class Lcom/android/launcher/shimmer/IconShimmerManager$ShimmerStatus;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher/shimmer/IconShimmerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ShimmerStatus"
.end annotation


# static fields
.field public static final STATUS_PENDING_SHIMMER:I = 0x1

.field public static final STATUS_SHIMMERING:I = 0x2


# instance fields
.field public mInstallTime:J

.field public mStatus:I


# direct methods
.method public constructor <init>(J)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher/shimmer/IconShimmerManager$ShimmerStatus;->mStatus:I

    iput-wide p1, p0, Lcom/android/launcher/shimmer/IconShimmerManager$ShimmerStatus;->mInstallTime:J

    return-void
.end method
