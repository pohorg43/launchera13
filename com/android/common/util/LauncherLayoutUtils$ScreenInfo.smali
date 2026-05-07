.class Lcom/android/common/util/LauncherLayoutUtils$ScreenInfo;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/common/util/LauncherLayoutUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ScreenInfo"
.end annotation


# instance fields
.field public final mId:I

.field public final mRank:I


# direct methods
.method public constructor <init>(II)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/common/util/LauncherLayoutUtils$ScreenInfo;->mId:I

    iput p2, p0, Lcom/android/common/util/LauncherLayoutUtils$ScreenInfo;->mRank:I

    return-void
.end method
