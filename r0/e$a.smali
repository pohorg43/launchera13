.class public abstract Lr0/e$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lq0/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lr0/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<DataT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lq0/o<",
        "Landroid/net/Uri;",
        "TDataT;>;"
    }
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TDataT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Class;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "TDataT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr0/e$a;->a:Landroid/content/Context;

    iput-object p2, p0, Lr0/e$a;->b:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public final a(Lq0/r;)Lq0/n;
    .registers 7
    .param p1  # Lq0/r;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq0/r;",
            ")",
            "Lq0/n<",
            "Landroid/net/Uri;",
            "TDataT;>;"
        }
    .end annotation

    new-instance v0, Lr0/e;

    iget-object v1, p0, Lr0/e$a;->a:Landroid/content/Context;

    const-class v2, Ljava/io/File;

    iget-object v3, p0, Lr0/e$a;->b:Ljava/lang/Class;

    invoke-virtual {p1, v2, v3}, Lq0/r;->b(Ljava/lang/Class;Ljava/lang/Class;)Lq0/n;

    move-result-object v2

    const-class v3, Landroid/net/Uri;

    iget-object v4, p0, Lr0/e$a;->b:Ljava/lang/Class;

    invoke-virtual {p1, v3, v4}, Lq0/r;->b(Ljava/lang/Class;Ljava/lang/Class;)Lq0/n;

    move-result-object p1

    iget-object p0, p0, Lr0/e$a;->b:Ljava/lang/Class;

    invoke-direct {v0, v1, v2, p1, p0}, Lr0/e;-><init>(Landroid/content/Context;Lq0/n;Lq0/n;Ljava/lang/Class;)V

    return-object v0
.end method
