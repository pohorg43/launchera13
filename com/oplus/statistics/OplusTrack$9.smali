.class final Lcom/oplus/statistics/OplusTrack$9;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/statistics/OplusTrack;->onKVEventEnd(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic val$context:Landroid/content/Context;

.field public final synthetic val$eventID:Ljava/lang/String;

.field public final synthetic val$eventTag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/oplus/statistics/OplusTrack$9;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/oplus/statistics/OplusTrack$9;->val$eventID:Ljava/lang/String;

    iput-object p3, p0, Lcom/oplus/statistics/OplusTrack$9;->val$eventTag:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/oplus/statistics/OplusTrack$9;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/oplus/statistics/OplusTrack$9;->val$eventID:Ljava/lang/String;

    iget-object p0, p0, Lcom/oplus/statistics/OplusTrack$9;->val$eventTag:Ljava/lang/String;

    invoke-static {v0, v1, p0}, Lcom/oplus/statistics/agent/OnEventAgent;->onKVEventEnd(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
