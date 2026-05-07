.class public final enum Lcom/oplus/quickstep/gesture/helper/GestureFailedStatisticHelper$FailedType;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/quickstep/gesture/helper/GestureFailedStatisticHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FailedType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/oplus/quickstep/gesture/helper/GestureFailedStatisticHelper$FailedType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oplus/quickstep/gesture/helper/GestureFailedStatisticHelper$FailedType;

.field public static final enum MOVE_DISTANCE_FAILED:Lcom/oplus/quickstep/gesture/helper/GestureFailedStatisticHelper$FailedType;

.field public static final enum SPEED_FAILED:Lcom/oplus/quickstep/gesture/helper/GestureFailedStatisticHelper$FailedType;

.field public static final enum TIME_OUT:Lcom/oplus/quickstep/gesture/helper/GestureFailedStatisticHelper$FailedType;


# instance fields
.field private final type:Ljava/lang/String;

.field private final value:I


# direct methods
.method private static final synthetic $values()[Lcom/oplus/quickstep/gesture/helper/GestureFailedStatisticHelper$FailedType;
    .registers 3

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/oplus/quickstep/gesture/helper/GestureFailedStatisticHelper$FailedType;

    sget-object v1, Lcom/oplus/quickstep/gesture/helper/GestureFailedStatisticHelper$FailedType;->TIME_OUT:Lcom/oplus/quickstep/gesture/helper/GestureFailedStatisticHelper$FailedType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/oplus/quickstep/gesture/helper/GestureFailedStatisticHelper$FailedType;->SPEED_FAILED:Lcom/oplus/quickstep/gesture/helper/GestureFailedStatisticHelper$FailedType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/oplus/quickstep/gesture/helper/GestureFailedStatisticHelper$FailedType;->MOVE_DISTANCE_FAILED:Lcom/oplus/quickstep/gesture/helper/GestureFailedStatisticHelper$FailedType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static constructor <clinit>()V
    .registers 4

    new-instance v0, Lcom/oplus/quickstep/gesture/helper/GestureFailedStatisticHelper$FailedType;

    const-string v1, "TIME_OUT"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v1, v3}, Lcom/oplus/quickstep/gesture/helper/GestureFailedStatisticHelper$FailedType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/oplus/quickstep/gesture/helper/GestureFailedStatisticHelper$FailedType;->TIME_OUT:Lcom/oplus/quickstep/gesture/helper/GestureFailedStatisticHelper$FailedType;

    new-instance v0, Lcom/oplus/quickstep/gesture/helper/GestureFailedStatisticHelper$FailedType;

    const-string v1, "SPEED_FAILED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v3, v1, v2}, Lcom/oplus/quickstep/gesture/helper/GestureFailedStatisticHelper$FailedType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/oplus/quickstep/gesture/helper/GestureFailedStatisticHelper$FailedType;->SPEED_FAILED:Lcom/oplus/quickstep/gesture/helper/GestureFailedStatisticHelper$FailedType;

    new-instance v0, Lcom/oplus/quickstep/gesture/helper/GestureFailedStatisticHelper$FailedType;

    const-string v1, "MOVE_DISTANCE_FAILED"

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v1, v3}, Lcom/oplus/quickstep/gesture/helper/GestureFailedStatisticHelper$FailedType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/oplus/quickstep/gesture/helper/GestureFailedStatisticHelper$FailedType;->MOVE_DISTANCE_FAILED:Lcom/oplus/quickstep/gesture/helper/GestureFailedStatisticHelper$FailedType;

    invoke-static {}, Lcom/oplus/quickstep/gesture/helper/GestureFailedStatisticHelper$FailedType;->$values()[Lcom/oplus/quickstep/gesture/helper/GestureFailedStatisticHelper$FailedType;

    move-result-object v0

    sput-object v0, Lcom/oplus/quickstep/gesture/helper/GestureFailedStatisticHelper$FailedType;->$VALUES:[Lcom/oplus/quickstep/gesture/helper/GestureFailedStatisticHelper$FailedType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/oplus/quickstep/gesture/helper/GestureFailedStatisticHelper$FailedType;->type:Ljava/lang/String;

    iput p4, p0, Lcom/oplus/quickstep/gesture/helper/GestureFailedStatisticHelper$FailedType;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oplus/quickstep/gesture/helper/GestureFailedStatisticHelper$FailedType;
    .registers 2

    const-class v0, Lcom/oplus/quickstep/gesture/helper/GestureFailedStatisticHelper$FailedType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/oplus/quickstep/gesture/helper/GestureFailedStatisticHelper$FailedType;

    return-object p0
.end method

.method public static values()[Lcom/oplus/quickstep/gesture/helper/GestureFailedStatisticHelper$FailedType;
    .registers 1

    sget-object v0, Lcom/oplus/quickstep/gesture/helper/GestureFailedStatisticHelper$FailedType;->$VALUES:[Lcom/oplus/quickstep/gesture/helper/GestureFailedStatisticHelper$FailedType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oplus/quickstep/gesture/helper/GestureFailedStatisticHelper$FailedType;

    return-object v0
.end method


# virtual methods
.method public final getType()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/gesture/helper/GestureFailedStatisticHelper$FailedType;->type:Ljava/lang/String;

    return-object p0
.end method

.method public final getValue()I
    .registers 1

    iget p0, p0, Lcom/oplus/quickstep/gesture/helper/GestureFailedStatisticHelper$FailedType;->value:I

    return p0
.end method
