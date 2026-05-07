.class public final Lcom/oplus/quickstep/utils/SwipeUpAnimHelper;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final CELLLAYOUT_Y_AXIS_COUNT_5:I = 0x5

.field private static final CELLLAYOUT_Y_AXIS_COUNT_6:I = 0x6

.field public static final INSTANCE:Lcom/oplus/quickstep/utils/SwipeUpAnimHelper;

.field private static final INVALID_COUNT:I = -0x1

.field private static iconPosition:[I

.field private static scaleParamsNumber:I

.field private static yAxisParamsNumber:I


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/oplus/quickstep/utils/SwipeUpAnimHelper;

    invoke-direct {v0}, Lcom/oplus/quickstep/utils/SwipeUpAnimHelper;-><init>()V

    sput-object v0, Lcom/oplus/quickstep/utils/SwipeUpAnimHelper;->INSTANCE:Lcom/oplus/quickstep/utils/SwipeUpAnimHelper;

    const/4 v0, 0x1

    sput v0, Lcom/oplus/quickstep/utils/SwipeUpAnimHelper;->yAxisParamsNumber:I

    sput v0, Lcom/oplus/quickstep/utils/SwipeUpAnimHelper;->scaleParamsNumber:I

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_16

    sput-object v0, Lcom/oplus/quickstep/utils/SwipeUpAnimHelper;->iconPosition:[I

    return-void

    nop

    :array_16
    .array-data 4
        -0x1
        -0x1
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static synthetic getIconPosition$annotations()V
    .registers 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    return-void
.end method

.method public static final getScaleParamsNumber()I
    .registers 1

    sget v0, Lcom/oplus/quickstep/utils/SwipeUpAnimHelper;->scaleParamsNumber:I

    return v0
.end method

.method public static synthetic getScaleParamsNumber$annotations()V
    .registers 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    return-void
.end method

.method public static final getYAxisParamsNumber()I
    .registers 1

    sget v0, Lcom/oplus/quickstep/utils/SwipeUpAnimHelper;->yAxisParamsNumber:I

    return v0
.end method

.method public static synthetic getYAxisParamsNumber$annotations()V
    .registers 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    return-void
.end method

.method public static final setIconPosition(II)V
    .registers 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/oplus/quickstep/utils/SwipeUpAnimHelper;->iconPosition:[I

    const/4 v1, 0x0

    aput p0, v0, v1

    const/4 p0, 0x1

    aput p1, v0, p0

    aget p1, v0, v1

    const/4 v2, -0x1

    if-eq p1, v2, :cond_38

    aget p1, v0, p0

    if-eq p1, v2, :cond_38

    aget p1, v0, v1

    aget v0, v0, p0

    const/4 v2, 0x5

    if-ne v0, v2, :cond_21

    sput p1, Lcom/oplus/quickstep/utils/SwipeUpAnimHelper;->yAxisParamsNumber:I

    if-gt p1, p0, :cond_1d

    goto :goto_1e

    :cond_1d
    move v1, p0

    :goto_1e
    sput v1, Lcom/oplus/quickstep/utils/SwipeUpAnimHelper;->scaleParamsNumber:I

    goto :goto_38

    :cond_21
    const/4 v2, 0x6

    if-ne v0, v2, :cond_38

    const/4 v0, 0x2

    if-nez p1, :cond_2a

    sput v1, Lcom/oplus/quickstep/utils/SwipeUpAnimHelper;->yAxisParamsNumber:I

    goto :goto_32

    :cond_2a
    const/4 v2, 0x3

    if-ge p1, v2, :cond_30

    sput p0, Lcom/oplus/quickstep/utils/SwipeUpAnimHelper;->yAxisParamsNumber:I

    goto :goto_32

    :cond_30
    sput v0, Lcom/oplus/quickstep/utils/SwipeUpAnimHelper;->yAxisParamsNumber:I

    :goto_32
    if-gt p1, v0, :cond_35

    goto :goto_36

    :cond_35
    move v1, p0

    :goto_36
    sput v1, Lcom/oplus/quickstep/utils/SwipeUpAnimHelper;->scaleParamsNumber:I

    :cond_38
    :goto_38
    return-void
.end method

.method public static final setScaleParamsNumber(I)V
    .registers 1

    sput p0, Lcom/oplus/quickstep/utils/SwipeUpAnimHelper;->scaleParamsNumber:I

    return-void
.end method

.method public static final setYAxisParamsNumber(I)V
    .registers 1

    sput p0, Lcom/oplus/quickstep/utils/SwipeUpAnimHelper;->yAxisParamsNumber:I

    return-void
.end method
