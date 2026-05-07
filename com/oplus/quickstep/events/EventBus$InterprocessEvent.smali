.class public Lcom/oplus/quickstep/events/EventBus$InterprocessEvent;
.super Lcom/oplus/quickstep/events/EventBus$Event;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/quickstep/events/EventBus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InterprocessEvent"
.end annotation


# static fields
.field private static final EXTRA_USER:Ljava/lang/String; = "_user"


# instance fields
.field public final user:I


# direct methods
.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Lcom/oplus/quickstep/events/EventBus$Event;-><init>()V

    iput p1, p0, Lcom/oplus/quickstep/events/EventBus$InterprocessEvent;->user:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .registers 3

    invoke-direct {p0}, Lcom/oplus/quickstep/events/EventBus$Event;-><init>()V

    const-string v0, "_user"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/oplus/quickstep/events/EventBus$InterprocessEvent;->user:I

    return-void
.end method


# virtual methods
.method public toBundle()Landroid/os/Bundle;
    .registers 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget p0, p0, Lcom/oplus/quickstep/events/EventBus$InterprocessEvent;->user:I

    const-string v1, "_user"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method
