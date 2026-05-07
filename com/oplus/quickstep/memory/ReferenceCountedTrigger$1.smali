.class Lcom/oplus/quickstep/memory/ReferenceCountedTrigger$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/quickstep/memory/ReferenceCountedTrigger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/oplus/quickstep/memory/ReferenceCountedTrigger;


# direct methods
.method public constructor <init>(Lcom/oplus/quickstep/memory/ReferenceCountedTrigger;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/quickstep/memory/ReferenceCountedTrigger$1;->this$0:Lcom/oplus/quickstep/memory/ReferenceCountedTrigger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/memory/ReferenceCountedTrigger$1;->this$0:Lcom/oplus/quickstep/memory/ReferenceCountedTrigger;

    invoke-virtual {p0}, Lcom/oplus/quickstep/memory/ReferenceCountedTrigger;->increment()V

    return-void
.end method
