.class public final enum Lcom/oplus/ovoiceskillservice/utils/ThreadTaskPool$RunState;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/ovoiceskillservice/utils/ThreadTaskPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RunState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/oplus/ovoiceskillservice/utils/ThreadTaskPool$RunState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oplus/ovoiceskillservice/utils/ThreadTaskPool$RunState;

.field public static final enum RUNNING:Lcom/oplus/ovoiceskillservice/utils/ThreadTaskPool$RunState;

.field public static final enum STOP_NOW:Lcom/oplus/ovoiceskillservice/utils/ThreadTaskPool$RunState;

.field public static final enum STOP_TASKOVER:Lcom/oplus/ovoiceskillservice/utils/ThreadTaskPool$RunState;


# direct methods
.method public static constructor <clinit>()V
    .registers 7

    new-instance v0, Lcom/oplus/ovoiceskillservice/utils/ThreadTaskPool$RunState;

    const-string v1, "RUNNING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/oplus/ovoiceskillservice/utils/ThreadTaskPool$RunState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oplus/ovoiceskillservice/utils/ThreadTaskPool$RunState;->RUNNING:Lcom/oplus/ovoiceskillservice/utils/ThreadTaskPool$RunState;

    new-instance v1, Lcom/oplus/ovoiceskillservice/utils/ThreadTaskPool$RunState;

    const-string v3, "STOP_TASKOVER"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/oplus/ovoiceskillservice/utils/ThreadTaskPool$RunState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/oplus/ovoiceskillservice/utils/ThreadTaskPool$RunState;->STOP_TASKOVER:Lcom/oplus/ovoiceskillservice/utils/ThreadTaskPool$RunState;

    new-instance v3, Lcom/oplus/ovoiceskillservice/utils/ThreadTaskPool$RunState;

    const-string v5, "STOP_NOW"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/oplus/ovoiceskillservice/utils/ThreadTaskPool$RunState;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/oplus/ovoiceskillservice/utils/ThreadTaskPool$RunState;->STOP_NOW:Lcom/oplus/ovoiceskillservice/utils/ThreadTaskPool$RunState;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/oplus/ovoiceskillservice/utils/ThreadTaskPool$RunState;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/oplus/ovoiceskillservice/utils/ThreadTaskPool$RunState;->$VALUES:[Lcom/oplus/ovoiceskillservice/utils/ThreadTaskPool$RunState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oplus/ovoiceskillservice/utils/ThreadTaskPool$RunState;
    .registers 2

    const-class v0, Lcom/oplus/ovoiceskillservice/utils/ThreadTaskPool$RunState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/oplus/ovoiceskillservice/utils/ThreadTaskPool$RunState;

    return-object p0
.end method

.method public static values()[Lcom/oplus/ovoiceskillservice/utils/ThreadTaskPool$RunState;
    .registers 1

    sget-object v0, Lcom/oplus/ovoiceskillservice/utils/ThreadTaskPool$RunState;->$VALUES:[Lcom/oplus/ovoiceskillservice/utils/ThreadTaskPool$RunState;

    invoke-virtual {v0}, [Lcom/oplus/ovoiceskillservice/utils/ThreadTaskPool$RunState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oplus/ovoiceskillservice/utils/ThreadTaskPool$RunState;

    return-object v0
.end method
