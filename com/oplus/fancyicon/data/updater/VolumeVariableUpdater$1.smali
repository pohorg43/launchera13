.class Lcom/oplus/fancyicon/data/updater/VolumeVariableUpdater$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/fancyicon/data/updater/VolumeVariableUpdater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/oplus/fancyicon/data/updater/VolumeVariableUpdater;


# direct methods
.method public constructor <init>(Lcom/oplus/fancyicon/data/updater/VolumeVariableUpdater;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/fancyicon/data/updater/VolumeVariableUpdater$1;->this$0:Lcom/oplus/fancyicon/data/updater/VolumeVariableUpdater;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object p0, p0, Lcom/oplus/fancyicon/data/updater/VolumeVariableUpdater$1;->this$0:Lcom/oplus/fancyicon/data/updater/VolumeVariableUpdater;

    invoke-static {p0}, Lcom/oplus/fancyicon/data/updater/VolumeVariableUpdater;->a(Lcom/oplus/fancyicon/data/updater/VolumeVariableUpdater;)Lcom/oplus/fancyicon/data/IndexedNumberVariable;

    move-result-object p0

    const-wide/high16 v0, -0x4010000000000000L  # -1.0

    invoke-virtual {p0, v0, v1}, Lcom/oplus/fancyicon/data/IndexedNumberVariable;->set(D)V

    return-void
.end method
