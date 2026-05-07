.class public final Ll2/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ll2/d;


# direct methods
.method public constructor <init>(Ll2/d;)V
    .registers 2

    iput-object p1, p0, Ll2/b;->a:Ll2/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Ll2/b;->a:Ll2/d;

    iget-object v0, v0, Ll2/d;->t:Lp2/b;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lp2/b;->dispose()V

    :cond_9
    iget-object p0, p0, Ll2/b;->a:Ll2/d;

    const/4 v0, 0x0

    iput-object v0, p0, Ll2/d;->t:Lp2/b;

    return-void
.end method
