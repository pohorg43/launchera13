.class public Ll0/e;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final e:Ll0/a;


# instance fields
.field public final a:Ll0/d;

.field public final b:Ln0/b;

.field public final c:Landroid/content/ContentResolver;

.field public final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/ImageHeaderParser;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Ll0/a;

    invoke-direct {v0}, Ll0/a;-><init>()V

    sput-object v0, Ll0/e;->e:Ll0/a;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ll0/d;Ln0/b;Landroid/content/ContentResolver;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/ImageHeaderParser;",
            ">;",
            "Ll0/d;",
            "Ln0/b;",
            "Landroid/content/ContentResolver;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Ll0/e;->a:Ll0/d;

    iput-object p3, p0, Ll0/e;->b:Ln0/b;

    iput-object p4, p0, Ll0/e;->c:Landroid/content/ContentResolver;

    iput-object p1, p0, Ll0/e;->d:Ljava/util/List;

    return-void
.end method
