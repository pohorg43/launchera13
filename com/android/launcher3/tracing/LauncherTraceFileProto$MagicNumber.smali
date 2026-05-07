.class public final enum Lcom/android/launcher3/tracing/LauncherTraceFileProto$MagicNumber;
.super Ljava/lang/Enum;
.source ""

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/tracing/LauncherTraceFileProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MagicNumber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/launcher3/tracing/LauncherTraceFileProto$MagicNumber;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/launcher3/tracing/LauncherTraceFileProto$MagicNumber;

.field public static final enum INVALID:Lcom/android/launcher3/tracing/LauncherTraceFileProto$MagicNumber;

.field public static final INVALID_VALUE:I = 0x0

.field public static final enum MAGIC_NUMBER_H:Lcom/android/launcher3/tracing/LauncherTraceFileProto$MagicNumber;

.field public static final MAGIC_NUMBER_H_VALUE:I = 0x43525452

.field public static final enum MAGIC_NUMBER_L:Lcom/android/launcher3/tracing/LauncherTraceFileProto$MagicNumber;

.field public static final MAGIC_NUMBER_L_VALUE:I = 0x48434e4c

.field private static final internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/android/launcher3/tracing/LauncherTraceFileProto$MagicNumber;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method public static constructor <clinit>()V
    .registers 8

    new-instance v0, Lcom/android/launcher3/tracing/LauncherTraceFileProto$MagicNumber;

    const-string v1, "INVALID"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/android/launcher3/tracing/LauncherTraceFileProto$MagicNumber;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/launcher3/tracing/LauncherTraceFileProto$MagicNumber;->INVALID:Lcom/android/launcher3/tracing/LauncherTraceFileProto$MagicNumber;

    new-instance v1, Lcom/android/launcher3/tracing/LauncherTraceFileProto$MagicNumber;

    const-string v3, "MAGIC_NUMBER_L"

    const/4 v4, 0x1

    const v5, 0x48434e4c  # 199993.19f

    invoke-direct {v1, v3, v4, v5}, Lcom/android/launcher3/tracing/LauncherTraceFileProto$MagicNumber;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/android/launcher3/tracing/LauncherTraceFileProto$MagicNumber;->MAGIC_NUMBER_L:Lcom/android/launcher3/tracing/LauncherTraceFileProto$MagicNumber;

    new-instance v3, Lcom/android/launcher3/tracing/LauncherTraceFileProto$MagicNumber;

    const-string v5, "MAGIC_NUMBER_H"

    const/4 v6, 0x2

    const v7, 0x43525452

    invoke-direct {v3, v5, v6, v7}, Lcom/android/launcher3/tracing/LauncherTraceFileProto$MagicNumber;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/android/launcher3/tracing/LauncherTraceFileProto$MagicNumber;->MAGIC_NUMBER_H:Lcom/android/launcher3/tracing/LauncherTraceFileProto$MagicNumber;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/android/launcher3/tracing/LauncherTraceFileProto$MagicNumber;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/android/launcher3/tracing/LauncherTraceFileProto$MagicNumber;->$VALUES:[Lcom/android/launcher3/tracing/LauncherTraceFileProto$MagicNumber;

    new-instance v0, Lcom/android/launcher3/tracing/LauncherTraceFileProto$MagicNumber$1;

    invoke-direct {v0}, Lcom/android/launcher3/tracing/LauncherTraceFileProto$MagicNumber$1;-><init>()V

    sput-object v0, Lcom/android/launcher3/tracing/LauncherTraceFileProto$MagicNumber;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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

    iput p3, p0, Lcom/android/launcher3/tracing/LauncherTraceFileProto$MagicNumber;->value:I

    return-void
.end method

.method public static forNumber(I)Lcom/android/launcher3/tracing/LauncherTraceFileProto$MagicNumber;
    .registers 2

    if-eqz p0, :cond_14

    const v0, 0x43525452

    if-eq p0, v0, :cond_11

    const v0, 0x48434e4c  # 199993.19f

    if-eq p0, v0, :cond_e

    const/4 p0, 0x0

    return-object p0

    :cond_e
    sget-object p0, Lcom/android/launcher3/tracing/LauncherTraceFileProto$MagicNumber;->MAGIC_NUMBER_L:Lcom/android/launcher3/tracing/LauncherTraceFileProto$MagicNumber;

    return-object p0

    :cond_11
    sget-object p0, Lcom/android/launcher3/tracing/LauncherTraceFileProto$MagicNumber;->MAGIC_NUMBER_H:Lcom/android/launcher3/tracing/LauncherTraceFileProto$MagicNumber;

    return-object p0

    :cond_14
    sget-object p0, Lcom/android/launcher3/tracing/LauncherTraceFileProto$MagicNumber;->INVALID:Lcom/android/launcher3/tracing/LauncherTraceFileProto$MagicNumber;

    return-object p0
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$EnumLiteMap;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/android/launcher3/tracing/LauncherTraceFileProto$MagicNumber;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/android/launcher3/tracing/LauncherTraceFileProto$MagicNumber;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/android/launcher3/tracing/LauncherTraceFileProto$MagicNumber;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, Lcom/android/launcher3/tracing/LauncherTraceFileProto$MagicNumber;->forNumber(I)Lcom/android/launcher3/tracing/LauncherTraceFileProto$MagicNumber;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/launcher3/tracing/LauncherTraceFileProto$MagicNumber;
    .registers 2

    const-class v0, Lcom/android/launcher3/tracing/LauncherTraceFileProto$MagicNumber;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/tracing/LauncherTraceFileProto$MagicNumber;

    return-object p0
.end method

.method public static values()[Lcom/android/launcher3/tracing/LauncherTraceFileProto$MagicNumber;
    .registers 1

    sget-object v0, Lcom/android/launcher3/tracing/LauncherTraceFileProto$MagicNumber;->$VALUES:[Lcom/android/launcher3/tracing/LauncherTraceFileProto$MagicNumber;

    invoke-virtual {v0}, [Lcom/android/launcher3/tracing/LauncherTraceFileProto$MagicNumber;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/launcher3/tracing/LauncherTraceFileProto$MagicNumber;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/tracing/LauncherTraceFileProto$MagicNumber;->value:I

    return p0
.end method
