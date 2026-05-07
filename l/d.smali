.class public Ll/d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ll/b;


# instance fields
.field public final a:I

.field public final b:Landroid/graphics/Path$FillType;

.field public final c:Lk/c;

.field public final d:Lk/d;

.field public final e:Lk/e;

.field public final f:Lk/e;

.field public final g:Ljava/lang/String;

.field public final h:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;ILandroid/graphics/Path$FillType;Lk/c;Lk/d;Lk/e;Lk/e;Lk/b;Lk/b;Z)V
    .registers 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Ll/d;->a:I

    iput-object p3, p0, Ll/d;->b:Landroid/graphics/Path$FillType;

    iput-object p4, p0, Ll/d;->c:Lk/c;

    iput-object p5, p0, Ll/d;->d:Lk/d;

    iput-object p6, p0, Ll/d;->e:Lk/e;

    iput-object p7, p0, Ll/d;->f:Lk/e;

    iput-object p1, p0, Ll/d;->g:Ljava/lang/String;

    iput-boolean p10, p0, Ll/d;->h:Z

    return-void
.end method


# virtual methods
.method public a(Lcom/airbnb/lottie/j;Lm/b;)Lg/c;
    .registers 4

    new-instance v0, Lg/h;

    invoke-direct {v0, p1, p2, p0}, Lg/h;-><init>(Lcom/airbnb/lottie/j;Lm/b;Ll/d;)V

    return-object v0
.end method
