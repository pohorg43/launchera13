.class public final Lw3/m;
.super Lq3/b0;
.source ""


# static fields
.field public static final a:Lw3/m;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lw3/m;

    invoke-direct {v0}, Lw3/m;-><init>()V

    sput-object v0, Lw3/m;->a:Lw3/m;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lq3/b0;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatch(Lb3/f;Ljava/lang/Runnable;)V
    .registers 4

    sget-object p0, Lw3/c;->f:Lw3/c;

    sget-object p1, Lw3/l;->g:Lw3/i;

    iget-object p0, p0, Lw3/f;->e:Lw3/a;

    const/4 v0, 0x0

    invoke-virtual {p0, p2, p1, v0}, Lw3/a;->c(Ljava/lang/Runnable;Lw3/i;Z)V

    return-void
.end method

.method public dispatchYield(Lb3/f;Ljava/lang/Runnable;)V
    .registers 4

    sget-object p0, Lw3/c;->f:Lw3/c;

    sget-object p1, Lw3/l;->g:Lw3/i;

    iget-object p0, p0, Lw3/f;->e:Lw3/a;

    const/4 v0, 0x1

    invoke-virtual {p0, p2, p1, v0}, Lw3/a;->c(Ljava/lang/Runnable;Lw3/i;Z)V

    return-void
.end method
