.class public Lq0/v;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lq0/n;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lq0/v$a;,
        Lq0/v$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Model:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lq0/n<",
        "TModel;TModel;>;"
    }
.end annotation


# static fields
.field public static final a:Lq0/v;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq0/v<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lq0/v;

    invoke-direct {v0}, Lq0/v;-><init>()V

    sput-object v0, Lq0/v;->a:Lq0/v;

    return-void
.end method

.method public constructor <init>()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Z
    .registers 2
    .param p1  # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TModel;)Z"
        }
    .end annotation

    const/4 p0, 0x1

    return p0
.end method

.method public b(Ljava/lang/Object;IILj0/e;)Lq0/n$a;
    .registers 5
    .param p1  # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4  # Lj0/e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TModel;II",
            "Lj0/e;",
            ")",
            "Lq0/n$a<",
            "TModel;>;"
        }
    .end annotation

    new-instance p0, Lq0/n$a;

    new-instance p2, Lf1/b;

    invoke-direct {p2, p1}, Lf1/b;-><init>(Ljava/lang/Object;)V

    new-instance p3, Lq0/v$b;

    invoke-direct {p3, p1}, Lq0/v$b;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, p2, p3}, Lq0/n$a;-><init>(Lj0/c;Lk0/d;)V

    return-object p0
.end method
