.class public final synthetic Lcom/android/wm/shell/compatui/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/android/wm/shell/compatui/CompatUIControllerExt$1;

.field public final synthetic b:Lcom/oplus/compactwindow/OplusCompactWindowInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/compatui/CompatUIControllerExt$1;Lcom/oplus/compactwindow/OplusCompactWindowInfo;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/compatui/c;->a:Lcom/android/wm/shell/compatui/CompatUIControllerExt$1;

    iput-object p2, p0, Lcom/android/wm/shell/compatui/c;->b:Lcom/oplus/compactwindow/OplusCompactWindowInfo;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/android/wm/shell/compatui/c;->a:Lcom/android/wm/shell/compatui/CompatUIControllerExt$1;

    iget-object p0, p0, Lcom/android/wm/shell/compatui/c;->b:Lcom/oplus/compactwindow/OplusCompactWindowInfo;

    invoke-static {v0, p0}, Lcom/android/wm/shell/compatui/CompatUIControllerExt$1;->a(Lcom/android/wm/shell/compatui/CompatUIControllerExt$1;Lcom/oplus/compactwindow/OplusCompactWindowInfo;)V

    return-void
.end method
