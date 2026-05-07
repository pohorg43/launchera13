.class final enum Lcom/oplus/fancyicon/command/VariableBinderCommand$Command;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/fancyicon/command/VariableBinderCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Command"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/oplus/fancyicon/command/VariableBinderCommand$Command;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oplus/fancyicon/command/VariableBinderCommand$Command;

.field public static final enum Invalid:Lcom/oplus/fancyicon/command/VariableBinderCommand$Command;

.field public static final enum Refresh:Lcom/oplus/fancyicon/command/VariableBinderCommand$Command;


# direct methods
.method public static constructor <clinit>()V
    .registers 5

    new-instance v0, Lcom/oplus/fancyicon/command/VariableBinderCommand$Command;

    const-string v1, "Refresh"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/oplus/fancyicon/command/VariableBinderCommand$Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oplus/fancyicon/command/VariableBinderCommand$Command;->Refresh:Lcom/oplus/fancyicon/command/VariableBinderCommand$Command;

    new-instance v1, Lcom/oplus/fancyicon/command/VariableBinderCommand$Command;

    const-string v3, "Invalid"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/oplus/fancyicon/command/VariableBinderCommand$Command;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/oplus/fancyicon/command/VariableBinderCommand$Command;->Invalid:Lcom/oplus/fancyicon/command/VariableBinderCommand$Command;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/oplus/fancyicon/command/VariableBinderCommand$Command;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/oplus/fancyicon/command/VariableBinderCommand$Command;->$VALUES:[Lcom/oplus/fancyicon/command/VariableBinderCommand$Command;

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

.method public static valueOf(Ljava/lang/String;)Lcom/oplus/fancyicon/command/VariableBinderCommand$Command;
    .registers 2

    const-class v0, Lcom/oplus/fancyicon/command/VariableBinderCommand$Command;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/oplus/fancyicon/command/VariableBinderCommand$Command;

    return-object p0
.end method

.method public static values()[Lcom/oplus/fancyicon/command/VariableBinderCommand$Command;
    .registers 1

    sget-object v0, Lcom/oplus/fancyicon/command/VariableBinderCommand$Command;->$VALUES:[Lcom/oplus/fancyicon/command/VariableBinderCommand$Command;

    invoke-virtual {v0}, [Lcom/oplus/fancyicon/command/VariableBinderCommand$Command;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oplus/fancyicon/command/VariableBinderCommand$Command;

    return-object v0
.end method
