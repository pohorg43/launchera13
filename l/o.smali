.class public Ll/o;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ll/b;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I

.field public final c:Lk/b;

.field public final d:Lk/b;

.field public final e:Lk/b;

.field public final f:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;ILk/b;Lk/b;Lk/b;Z)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ll/o;->a:Ljava/lang/String;

    iput p2, p0, Ll/o;->b:I

    iput-object p3, p0, Ll/o;->c:Lk/b;

    iput-object p4, p0, Ll/o;->d:Lk/b;

    iput-object p5, p0, Ll/o;->e:Lk/b;

    iput-boolean p6, p0, Ll/o;->f:Z

    return-void
.end method


# virtual methods
.method public a(Lcom/airbnb/lottie/j;Lm/b;)Lg/c;
    .registers 3

    new-instance p1, Lg/s;

    invoke-direct {p1, p2, p0}, Lg/s;-><init>(Lm/b;Ll/o;)V

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    const-string v0, "Trim Path: {start: "

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ll/o;->c:Lk/b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", end: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ll/o;->d:Lk/b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", offset: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Ll/o;->e:Lk/b;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
