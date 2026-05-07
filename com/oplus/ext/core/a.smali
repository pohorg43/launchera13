.class public final synthetic Lcom/oplus/ext/core/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# instance fields
.field public final synthetic a:Ljava/lang/Class;

.field public final synthetic b:Z


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Class;Z)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/ext/core/a;->a:Ljava/lang/Class;

    iput-boolean p2, p0, Lcom/oplus/ext/core/a;->b:Z

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    iget-object v0, p0, Lcom/oplus/ext/core/a;->a:Ljava/lang/Class;

    iget-boolean p0, p0, Lcom/oplus/ext/core/a;->b:Z

    invoke-static {v0, p0, p1, p2, p3}, Lcom/oplus/ext/core/ExtDummy;->a(Ljava/lang/Class;ZLjava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
