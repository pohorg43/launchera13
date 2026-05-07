.class public Lcom/bumptech/glide/h$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/bumptech/glide/h;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/h;)V
    .registers 2

    iput-object p1, p0, Lcom/bumptech/glide/h$a;->a:Lcom/bumptech/glide/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object p0, p0, Lcom/bumptech/glide/h$a;->a:Lcom/bumptech/glide/h;

    iget-object v0, p0, Lcom/bumptech/glide/h;->c:Lz0/h;

    invoke-interface {v0, p0}, Lz0/h;->a(Lz0/i;)V

    return-void
.end method
