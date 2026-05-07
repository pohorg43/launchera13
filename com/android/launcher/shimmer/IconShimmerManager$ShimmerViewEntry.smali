.class Lcom/android/launcher/shimmer/IconShimmerManager$ShimmerViewEntry;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher/shimmer/IconShimmerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ShimmerViewEntry"
.end annotation


# instance fields
.field public mId:I

.field public mInstallTime:J

.field public mPackageName:Ljava/lang/String;

.field public mWeakRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/launcher/shimmer/IShimmerView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher/shimmer/IconShimmerManager$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/launcher/shimmer/IconShimmerManager$ShimmerViewEntry;-><init>()V

    return-void
.end method
