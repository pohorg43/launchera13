.class public final Lcom/oplus/channel/server/utils/Constants;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final CALL_RESULT:Ljava/lang/String; = "call_result"

.field public static final INSTANCE:Lcom/oplus/channel/server/utils/Constants;

.field public static final METHOD_CALLBACK:Ljava/lang/String; = "callback"

.field public static final METHOD_PULL:Ljava/lang/String; = "pull"

.field public static final METHOD_PULL_COMMAND:Ljava/lang/String; = "pullCommand"

.field public static final RESULT_CALLBACK_DATA:Ljava/lang/String; = "RESULT_CALLBACK_DATA"

.field public static final RESULT_CALLBACK_ID:Ljava/lang/String; = "RESULT_CALLBACK_ID"

.field public static final RESULT_COMMAND_LIST:Ljava/lang/String; = "RESULT_COMMAND_LIST"

.field public static final RESULT_FAILURE:I = 0x1

.field public static final RESULT_IDLE_STATE:Ljava/lang/String; = "RESULT_IDLE_STATE"

.field public static final RESULT_SUCCESS:I


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/oplus/channel/server/utils/Constants;

    invoke-direct {v0}, Lcom/oplus/channel/server/utils/Constants;-><init>()V

    sput-object v0, Lcom/oplus/channel/server/utils/Constants;->INSTANCE:Lcom/oplus/channel/server/utils/Constants;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
