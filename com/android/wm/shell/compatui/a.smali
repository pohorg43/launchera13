.class public final synthetic Lcom/android/wm/shell/compatui/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/android/wm/shell/compatui/CompatUIController$CompatUIImpl;

.field public final synthetic b:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/compatui/CompatUIController$CompatUIImpl;Z)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/compatui/a;->a:Lcom/android/wm/shell/compatui/CompatUIController$CompatUIImpl;

    iput-boolean p2, p0, Lcom/android/wm/shell/compatui/a;->b:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/android/wm/shell/compatui/a;->a:Lcom/android/wm/shell/compatui/CompatUIController$CompatUIImpl;

    iget-boolean p0, p0, Lcom/android/wm/shell/compatui/a;->b:Z

    invoke-static {v0, p0}, Lcom/android/wm/shell/compatui/CompatUIController$CompatUIImpl;->a(Lcom/android/wm/shell/compatui/CompatUIController$CompatUIImpl;Z)V

    return-void
.end method
