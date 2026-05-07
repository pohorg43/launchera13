.class Lcom/oplus/quickstep/memory/MemoryInfoManager$1;
.super Landroid/database/ContentObserver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/quickstep/memory/MemoryInfoManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/oplus/quickstep/memory/MemoryInfoManager;


# direct methods
.method public constructor <init>(Lcom/oplus/quickstep/memory/MemoryInfoManager;Landroid/os/Handler;)V
    .registers 3

    iput-object p1, p0, Lcom/oplus/quickstep/memory/MemoryInfoManager$1;->this$0:Lcom/oplus/quickstep/memory/MemoryInfoManager;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 2

    iget-object p0, p0, Lcom/oplus/quickstep/memory/MemoryInfoManager$1;->this$0:Lcom/oplus/quickstep/memory/MemoryInfoManager;

    invoke-static {p0}, Lcom/oplus/quickstep/memory/MemoryInfoManager;->access$000(Lcom/oplus/quickstep/memory/MemoryInfoManager;)V

    return-void
.end method
