.class public final Lcom/android/launcher3/folder/big/BigFolderTouchController$Companion;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/folder/big/BigFolderTouchController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/launcher3/folder/big/BigFolderTouchController$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final calcRealOverScrollDist(IFI)I
    .registers 4

    int-to-float p0, p1

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    int-to-float p2, p3

    div-float/2addr p1, p2

    const/high16 p2, 0x3f800000  # 1.0f

    sub-float/2addr p2, p1

    mul-float/2addr p2, p0

    const/4 p0, 0x3

    int-to-float p0, p0

    div-float/2addr p2, p0

    float-to-int p0, p2

    return p0
.end method
