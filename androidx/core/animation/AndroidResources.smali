.class Landroidx/core/animation/AndroidResources;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final FAST_OUT_LINEAR_IN:I = 0x10c000f

.field public static final FAST_OUT_SLOW_IN:I = 0x10c000d

.field public static final LINEAR_OUT_SLOW_IN:I = 0x10c000e

.field public static final STYLEABLE_ACCELERATE_INTERPOLATOR:[I

.field public static final STYLEABLE_ACCELERATE_INTERPOLATOR_FACTOR:I = 0x0
    .annotation build Landroidx/annotation/StyleableRes;
    .end annotation
.end field

.field public static final STYLEABLE_ANIMATOR:[I

.field public static final STYLEABLE_ANIMATOR_DURATION:I = 0x1

.field public static final STYLEABLE_ANIMATOR_INTERPOLATOR:I = 0x0

.field public static final STYLEABLE_ANIMATOR_REPEAT_COUNT:I = 0x3

.field public static final STYLEABLE_ANIMATOR_REPEAT_MODE:I = 0x4

.field public static final STYLEABLE_ANIMATOR_SET:[I

.field public static final STYLEABLE_ANIMATOR_SET_ORDERING:I = 0x0

.field public static final STYLEABLE_ANIMATOR_START_OFFSET:I = 0x2

.field public static final STYLEABLE_ANIMATOR_VALUE_FROM:I = 0x5

.field public static final STYLEABLE_ANIMATOR_VALUE_TO:I = 0x6

.field public static final STYLEABLE_ANIMATOR_VALUE_TYPE:I = 0x7

.field public static final STYLEABLE_ANTICIPATEOVERSHOOT_INTERPOLATOR:[I

.field public static final STYLEABLE_ANTICIPATEOVERSHOOT_INTERPOLATOR_EXTRA_TENSION:I = 0x1
    .annotation build Landroidx/annotation/StyleableRes;
    .end annotation
.end field

.field public static final STYLEABLE_ANTICIPATEOVERSHOOT_INTERPOLATOR_TENSION:I = 0x0
    .annotation build Landroidx/annotation/StyleableRes;
    .end annotation
.end field

.field public static final STYLEABLE_CYCLE_INTERPOLATOR:[I

.field public static final STYLEABLE_CYCLE_INTERPOLATOR_CYCLES:I = 0x0
    .annotation build Landroidx/annotation/StyleableRes;
    .end annotation
.end field

.field public static final STYLEABLE_DECELERATE_INTERPOLATOR:[I

.field public static final STYLEABLE_DECELERATE_INTERPOLATOR_FACTOR:I = 0x0
    .annotation build Landroidx/annotation/StyleableRes;
    .end annotation
.end field

.field public static final STYLEABLE_KEYFRAME:[I

.field public static final STYLEABLE_KEYFRAME_FRACTION:I = 0x3

.field public static final STYLEABLE_KEYFRAME_INTERPOLATOR:I = 0x1

.field public static final STYLEABLE_KEYFRAME_VALUE:I = 0x0

.field public static final STYLEABLE_KEYFRAME_VALUE_TYPE:I = 0x2

.field public static final STYLEABLE_OVERSHOOT_INTERPOLATOR:[I

.field public static final STYLEABLE_OVERSHOOT_INTERPOLATOR_TENSION:I = 0x0
    .annotation build Landroidx/annotation/StyleableRes;
    .end annotation
.end field

.field public static final STYLEABLE_PATH_INTERPOLATOR:[I

.field public static final STYLEABLE_PATH_INTERPOLATOR_CONTROL_X_1:I = 0x0

.field public static final STYLEABLE_PATH_INTERPOLATOR_CONTROL_X_2:I = 0x2

.field public static final STYLEABLE_PATH_INTERPOLATOR_CONTROL_Y_1:I = 0x1

.field public static final STYLEABLE_PATH_INTERPOLATOR_CONTROL_Y_2:I = 0x3

.field public static final STYLEABLE_PATH_INTERPOLATOR_PATH_DATA:I = 0x4

.field public static final STYLEABLE_PROPERTY_ANIMATOR:[I

.field public static final STYLEABLE_PROPERTY_ANIMATOR_PATH_DATA:I = 0x1

.field public static final STYLEABLE_PROPERTY_ANIMATOR_PROPERTY_NAME:I = 0x0

.field public static final STYLEABLE_PROPERTY_ANIMATOR_PROPERTY_X_NAME:I = 0x2

.field public static final STYLEABLE_PROPERTY_ANIMATOR_PROPERTY_Y_NAME:I = 0x3

.field public static final STYLEABLE_PROPERTY_VALUES_HOLDER:[I

.field public static final STYLEABLE_PROPERTY_VALUES_HOLDER_PROPERTY_NAME:I = 0x3

.field public static final STYLEABLE_PROPERTY_VALUES_HOLDER_VALUE_FROM:I = 0x0

.field public static final STYLEABLE_PROPERTY_VALUES_HOLDER_VALUE_TO:I = 0x1

.field public static final STYLEABLE_PROPERTY_VALUES_HOLDER_VALUE_TYPE:I = 0x2


# direct methods
.method public static constructor <clinit>()V
    .registers 4

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_5c

    sput-object v0, Landroidx/core/animation/AndroidResources;->STYLEABLE_ANTICIPATEOVERSHOOT_INTERPOLATOR:[I

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    const v3, 0x10101d3

    aput v3, v1, v2

    sput-object v1, Landroidx/core/animation/AndroidResources;->STYLEABLE_ACCELERATE_INTERPOLATOR:[I

    new-array v1, v0, [I

    aput v3, v1, v2

    sput-object v1, Landroidx/core/animation/AndroidResources;->STYLEABLE_DECELERATE_INTERPOLATOR:[I

    new-array v1, v0, [I

    const v3, 0x10101d4

    aput v3, v1, v2

    sput-object v1, Landroidx/core/animation/AndroidResources;->STYLEABLE_CYCLE_INTERPOLATOR:[I

    new-array v1, v0, [I

    const v3, 0x101026a

    aput v3, v1, v2

    sput-object v1, Landroidx/core/animation/AndroidResources;->STYLEABLE_OVERSHOOT_INTERPOLATOR:[I

    const/16 v1, 0x8

    new-array v1, v1, [I

    fill-array-data v1, :array_64

    sput-object v1, Landroidx/core/animation/AndroidResources;->STYLEABLE_ANIMATOR:[I

    new-array v0, v0, [I

    const v1, 0x10102e2

    aput v1, v0, v2

    sput-object v0, Landroidx/core/animation/AndroidResources;->STYLEABLE_ANIMATOR_SET:[I

    const/4 v0, 0x4

    new-array v1, v0, [I

    fill-array-data v1, :array_78

    sput-object v1, Landroidx/core/animation/AndroidResources;->STYLEABLE_PROPERTY_VALUES_HOLDER:[I

    new-array v1, v0, [I

    fill-array-data v1, :array_84

    sput-object v1, Landroidx/core/animation/AndroidResources;->STYLEABLE_KEYFRAME:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_90

    sput-object v0, Landroidx/core/animation/AndroidResources;->STYLEABLE_PROPERTY_ANIMATOR:[I

    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_9c

    sput-object v0, Landroidx/core/animation/AndroidResources;->STYLEABLE_PATH_INTERPOLATOR:[I

    return-void

    :array_5c
    .array-data 4
        0x101026a
        0x101026b
    .end array-data

    :array_64
    .array-data 4
        0x1010141
        0x1010198
        0x10101be
        0x10101bf
        0x10101c0
        0x10102de
        0x10102df
        0x10102e0
    .end array-data

    :array_78
    .array-data 4
        0x10102de
        0x10102df
        0x10102e0
        0x10102e1
    .end array-data

    :array_84
    .array-data 4
        0x1010024
        0x1010141
        0x10102e0
        0x10104d8
    .end array-data

    :array_90
    .array-data 4
        0x10102e1
        0x1010405
        0x1010474
        0x1010475
    .end array-data

    :array_9c
    .array-data 4
        0x10103fc
        0x10103fd
        0x10103fe
        0x10103ff
        0x1010405
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
