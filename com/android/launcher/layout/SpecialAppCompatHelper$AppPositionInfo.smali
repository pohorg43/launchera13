.class final Lcom/android/launcher/layout/SpecialAppCompatHelper$AppPositionInfo;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher/layout/SpecialAppCompatHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AppPositionInfo"
.end annotation


# instance fields
.field public mContainer:I

.field public mRank:I

.field public mScreen:I

.field public mX:I

.field public mY:I


# direct methods
.method public constructor <init>(IIIII)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/launcher/layout/SpecialAppCompatHelper$AppPositionInfo;->mScreen:I

    iput p2, p0, Lcom/android/launcher/layout/SpecialAppCompatHelper$AppPositionInfo;->mX:I

    iput p3, p0, Lcom/android/launcher/layout/SpecialAppCompatHelper$AppPositionInfo;->mY:I

    iput p4, p0, Lcom/android/launcher/layout/SpecialAppCompatHelper$AppPositionInfo;->mContainer:I

    iput p5, p0, Lcom/android/launcher/layout/SpecialAppCompatHelper$AppPositionInfo;->mRank:I

    return-void
.end method
