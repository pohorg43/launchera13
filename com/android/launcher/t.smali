.class public final synthetic Lcom/android/launcher/t;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/android/launcher/Launcher;

.field public final synthetic b:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher/Launcher;Z)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/t;->a:Lcom/android/launcher/Launcher;

    iput-boolean p2, p0, Lcom/android/launcher/t;->b:Z

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/android/launcher/t;->a:Lcom/android/launcher/Launcher;

    iget-boolean p0, p0, Lcom/android/launcher/t;->b:Z

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {v0, p0, p1}, Lcom/android/launcher/Launcher;->L(Lcom/android/launcher/Launcher;ZLjava/lang/Boolean;)Ly2/p;

    move-result-object p0

    return-object p0
.end method
