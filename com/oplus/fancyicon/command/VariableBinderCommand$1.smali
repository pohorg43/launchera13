.class synthetic Lcom/oplus/fancyicon/command/VariableBinderCommand$1;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/fancyicon/command/VariableBinderCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field public static final synthetic $SwitchMap$com$oplus$fancyicon$command$VariableBinderCommand$Command:[I


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    invoke-static {}, Lcom/oplus/fancyicon/command/VariableBinderCommand$Command;->values()[Lcom/oplus/fancyicon/command/VariableBinderCommand$Command;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/oplus/fancyicon/command/VariableBinderCommand$1;->$SwitchMap$com$oplus$fancyicon$command$VariableBinderCommand$Command:[I

    :try_start_9
    sget-object v1, Lcom/oplus/fancyicon/command/VariableBinderCommand$Command;->Refresh:Lcom/oplus/fancyicon/command/VariableBinderCommand$Command;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    return-void
.end method
