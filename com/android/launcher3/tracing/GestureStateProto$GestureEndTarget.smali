.class public final enum Lcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget;
.super Ljava/lang/Enum;
.source ""

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/tracing/GestureStateProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "GestureEndTarget"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget;

.field public static final enum HOME:Lcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget;

.field public static final HOME_VALUE:I = 0x1

.field public static final enum LAST_TASK:Lcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget;

.field public static final LAST_TASK_VALUE:I = 0x4

.field public static final enum NEW_TASK:Lcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget;

.field public static final NEW_TASK_VALUE:I = 0x3

.field public static final enum RECENTS:Lcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget;

.field public static final RECENTS_VALUE:I = 0x2

.field public static final enum UNSET:Lcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget;

.field public static final UNSET_VALUE:I

.field private static final internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method public static constructor <clinit>()V
    .registers 11

    new-instance v0, Lcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget;

    const-string v1, "UNSET"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget;->UNSET:Lcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget;

    new-instance v1, Lcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget;

    const-string v3, "HOME"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget;->HOME:Lcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget;

    new-instance v3, Lcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget;

    const-string v5, "RECENTS"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget;->RECENTS:Lcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget;

    new-instance v5, Lcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget;

    const-string v7, "NEW_TASK"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget;->NEW_TASK:Lcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget;

    new-instance v7, Lcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget;

    const-string v9, "LAST_TASK"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget;->LAST_TASK:Lcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget;->$VALUES:[Lcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget;

    new-instance v0, Lcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget$1;

    invoke-direct {v0}, Lcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget$1;-><init>()V

    sput-object v0, Lcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget;->value:I

    return-void
.end method

.method public static forNumber(I)Lcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget;
    .registers 2

    if-eqz p0, :cond_1c

    const/4 v0, 0x1

    if-eq p0, v0, :cond_19

    const/4 v0, 0x2

    if-eq p0, v0, :cond_16

    const/4 v0, 0x3

    if-eq p0, v0, :cond_13

    const/4 v0, 0x4

    if-eq p0, v0, :cond_10

    const/4 p0, 0x0

    return-object p0

    :cond_10
    sget-object p0, Lcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget;->LAST_TASK:Lcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget;

    return-object p0

    :cond_13
    sget-object p0, Lcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget;->NEW_TASK:Lcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget;

    return-object p0

    :cond_16
    sget-object p0, Lcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget;->RECENTS:Lcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget;

    return-object p0

    :cond_19
    sget-object p0, Lcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget;->HOME:Lcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget;

    return-object p0

    :cond_1c
    sget-object p0, Lcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget;->UNSET:Lcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget;

    return-object p0
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$EnumLiteMap;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, Lcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget;->forNumber(I)Lcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget;
    .registers 2

    const-class v0, Lcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget;

    return-object p0
.end method

.method public static values()[Lcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget;
    .registers 1

    sget-object v0, Lcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget;->$VALUES:[Lcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget;

    invoke-virtual {v0}, [Lcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget;->value:I

    return p0
.end method
