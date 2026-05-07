.class Lcom/oplus/splitscreen/SplitScreenDragIconPanel$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/splitscreen/SplitScreenDragIconPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/oplus/splitscreen/SplitScreenDragIconPanel;


# direct methods
.method public constructor <init>(Lcom/oplus/splitscreen/SplitScreenDragIconPanel;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$2;->this$0:Lcom/oplus/splitscreen/SplitScreenDragIconPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object p0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$2;->this$0:Lcom/oplus/splitscreen/SplitScreenDragIconPanel;

    const-string v0, "DropTimeoutRunnable"

    invoke-static {p0, v0}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->access$500(Lcom/oplus/splitscreen/SplitScreenDragIconPanel;Ljava/lang/String;)V

    return-void
.end method
