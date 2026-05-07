.class Lcom/nearme/instant/xcard/CardClient$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/nearme/instant/xcard/ICardEngineCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nearme/instant/xcard/CardClient;->initInternal(Landroid/content/Context;ZJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/nearme/instant/xcard/CardClient;


# direct methods
.method public constructor <init>(Lcom/nearme/instant/xcard/CardClient;)V
    .registers 2

    iput-object p1, p0, Lcom/nearme/instant/xcard/CardClient$3;->this$0:Lcom/nearme/instant/xcard/CardClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitFailure(ILjava/lang/Throwable;)V
    .registers 3

    iget-object p0, p0, Lcom/nearme/instant/xcard/CardClient$3;->this$0:Lcom/nearme/instant/xcard/CardClient;

    invoke-static {p0, p1, p2}, Lcom/nearme/instant/xcard/CardClient;->access$100(Lcom/nearme/instant/xcard/CardClient;ILjava/lang/Throwable;)V

    return-void
.end method

.method public onInitSuccess()V
    .registers 1

    iget-object p0, p0, Lcom/nearme/instant/xcard/CardClient$3;->this$0:Lcom/nearme/instant/xcard/CardClient;

    invoke-static {p0}, Lcom/nearme/instant/xcard/CardClient;->access$000(Lcom/nearme/instant/xcard/CardClient;)V

    return-void
.end method
