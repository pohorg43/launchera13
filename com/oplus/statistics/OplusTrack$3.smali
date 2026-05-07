.class final Lcom/oplus/statistics/OplusTrack$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/statistics/OplusTrack;->onEventStart(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic val$context:Landroid/content/Context;

.field public final synthetic val$eventID:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/oplus/statistics/OplusTrack$3;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/oplus/statistics/OplusTrack$3;->val$eventID:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/oplus/statistics/OplusTrack$3;->val$context:Landroid/content/Context;

    iget-object p0, p0, Lcom/oplus/statistics/OplusTrack$3;->val$eventID:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v0, p0, v1}, Lcom/oplus/statistics/agent/OnEventAgent;->onEventStart(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
