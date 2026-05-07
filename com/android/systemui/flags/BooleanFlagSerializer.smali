.class public final Lcom/android/systemui/flags/BooleanFlagSerializer;
.super Lcom/android/systemui/flags/FlagSerializer;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/flags/FlagSerializer<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/systemui/flags/BooleanFlagSerializer;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/systemui/flags/BooleanFlagSerializer;

    invoke-direct {v0}, Lcom/android/systemui/flags/BooleanFlagSerializer;-><init>()V

    sput-object v0, Lcom/android/systemui/flags/BooleanFlagSerializer;->INSTANCE:Lcom/android/systemui/flags/BooleanFlagSerializer;

    return-void
.end method

.method private constructor <init>()V
    .registers 4

    sget-object v0, Lcom/android/systemui/flags/BooleanFlagSerializer$1;->INSTANCE:Lcom/android/systemui/flags/BooleanFlagSerializer$1;

    sget-object v1, Lcom/android/systemui/flags/BooleanFlagSerializer$2;->INSTANCE:Lcom/android/systemui/flags/BooleanFlagSerializer$2;

    const-string v2, "boolean"

    invoke-direct {p0, v2, v0, v1}, Lcom/android/systemui/flags/FlagSerializer;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method private static final synthetic _init_$put(Lorg/json/JSONObject;Ljava/lang/String;Z)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    return-void
.end method

.method public static final synthetic access$_init_$put(Lorg/json/JSONObject;Ljava/lang/String;Z)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/systemui/flags/BooleanFlagSerializer;->_init_$put(Lorg/json/JSONObject;Ljava/lang/String;Z)V

    return-void
.end method
