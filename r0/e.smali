.class public final Lr0/e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lq0/n;


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x1d
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lr0/e$a;,
        Lr0/e$b;,
        Lr0/e$c;,
        Lr0/e$d;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<DataT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lq0/n<",
        "Landroid/net/Uri;",
        "TDataT;>;"
    }
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lq0/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq0/n<",
            "Ljava/io/File;",
            "TDataT;>;"
        }
    .end annotation
.end field

.field public final c:Lq0/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq0/n<",
            "Landroid/net/Uri;",
            "TDataT;>;"
        }
    .end annotation
.end field

.field public final d:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TDataT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lq0/n;Lq0/n;Ljava/lang/Class;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lq0/n<",
            "Ljava/io/File;",
            "TDataT;>;",
            "Lq0/n<",
            "Landroid/net/Uri;",
            "TDataT;>;",
            "Ljava/lang/Class<",
            "TDataT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lr0/e;->a:Landroid/content/Context;

    iput-object p2, p0, Lr0/e;->b:Lq0/n;

    iput-object p3, p0, Lr0/e;->c:Lq0/n;

    iput-object p4, p0, Lr0/e;->d:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Z
    .registers 2
    .param p1  # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Landroid/net/Uri;

    invoke-static {p1}, Ll0/b;->e(Landroid/net/Uri;)Z

    move-result p0

    return p0
.end method

.method public b(Ljava/lang/Object;IILj0/e;)Lq0/n$a;
    .registers 16
    .param p1  # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4  # Lj0/e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    move-object v4, p1

    check-cast v4, Landroid/net/Uri;

    new-instance p1, Lq0/n$a;

    new-instance v9, Lf1/b;

    invoke-direct {v9, v4}, Lf1/b;-><init>(Ljava/lang/Object;)V

    new-instance v10, Lr0/e$d;

    iget-object v1, p0, Lr0/e;->a:Landroid/content/Context;

    iget-object v2, p0, Lr0/e;->b:Lq0/n;

    iget-object v3, p0, Lr0/e;->c:Lq0/n;

    iget-object v8, p0, Lr0/e;->d:Ljava/lang/Class;

    move-object v0, v10

    move v5, p2

    move v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v8}, Lr0/e$d;-><init>(Landroid/content/Context;Lq0/n;Lq0/n;Landroid/net/Uri;IILj0/e;Ljava/lang/Class;)V

    invoke-direct {p1, v9, v10}, Lq0/n$a;-><init>(Lj0/c;Lk0/d;)V

    return-object p1
.end method
