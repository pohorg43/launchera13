.class public Ll/i;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ll/b;


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/lang/String;

.field public final c:Lk/b;

.field public final d:Ljava/lang/Object;

.field public final e:Ljava/lang/Object;

.field public final f:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lk/b;Lk/b;Lk/k;Z)V
    .registers 7

    const/4 v0, 0x0

    iput v0, p0, Ll/i;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ll/i;->b:Ljava/lang/String;

    iput-object p2, p0, Ll/i;->c:Lk/b;

    iput-object p3, p0, Ll/i;->d:Ljava/lang/Object;

    iput-object p4, p0, Ll/i;->e:Ljava/lang/Object;

    iput-boolean p5, p0, Ll/i;->f:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lk/l;Lk/e;Lk/b;Z)V
    .registers 7

    const/4 v0, 0x1

    iput v0, p0, Ll/i;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ll/i;->b:Ljava/lang/String;

    iput-object p2, p0, Ll/i;->d:Ljava/lang/Object;

    iput-object p3, p0, Ll/i;->e:Ljava/lang/Object;

    iput-object p4, p0, Ll/i;->c:Lk/b;

    iput-boolean p5, p0, Ll/i;->f:Z

    return-void
.end method


# virtual methods
.method public a(Lcom/airbnb/lottie/j;Lm/b;)Lg/c;
    .registers 4

    iget v0, p0, Ll/i;->a:I

    packed-switch v0, :pswitch_data_12

    goto :goto_c

    :pswitch_6  #0x0
    new-instance v0, Lg/p;

    invoke-direct {v0, p1, p2, p0}, Lg/p;-><init>(Lcom/airbnb/lottie/j;Lm/b;Ll/i;)V

    return-object v0

    :goto_c
    new-instance v0, Lg/o;

    invoke-direct {v0, p1, p2, p0}, Lg/o;-><init>(Lcom/airbnb/lottie/j;Lm/b;Ll/i;)V

    return-object v0

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    iget v0, p0, Ll/i;->a:I

    packed-switch v0, :pswitch_data_2e

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_a  #0x1
    const-string v0, "RectangleShape{position="

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ll/i;->d:Ljava/lang/Object;

    check-cast v1, Lk/l;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Ll/i;->e:Ljava/lang/Object;

    check-cast p0, Lk/e;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_2e
    .packed-switch 0x1
        :pswitch_a  #00000001
    .end packed-switch
.end method
