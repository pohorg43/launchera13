.class public final Lcom/oplus/card/manager/domain/CardManager$configGetterCallback$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/card/manager/domain/CardManager$ConfigGetterCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/card/manager/domain/CardManager;-><init>(Lcom/oplus/card/manager/domain/CardIdAllocation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/oplus/card/manager/domain/CardManager;


# direct methods
.method public constructor <init>(Lcom/oplus/card/manager/domain/CardManager;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/card/manager/domain/CardManager$configGetterCallback$1;->this$0:Lcom/oplus/card/manager/domain/CardManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSeedConfig(III)Ljava/lang/String;
    .registers 5

    iget-object p0, p0, Lcom/oplus/card/manager/domain/CardManager$configGetterCallback$1;->this$0:Lcom/oplus/card/manager/domain/CardManager;

    invoke-static {p0}, Lcom/oplus/card/manager/domain/CardManager;->access$getCardModelList$p(Lcom/oplus/card/manager/domain/CardManager;)Ljava/util/Set;

    move-result-object v0

    invoke-static {p0, v0, p1, p2, p3}, Lcom/oplus/card/manager/domain/CardManager;->access$findModel(Lcom/oplus/card/manager/domain/CardManager;Ljava/util/Set;III)Lcom/oplus/card/manager/domain/model/CardModel;

    move-result-object p0

    if-nez p0, :cond_f

    const-string p0, ""

    return-object p0

    :cond_f
    invoke-virtual {p0}, Lcom/oplus/card/manager/domain/model/CardModel;->getSeedCardConfig()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
