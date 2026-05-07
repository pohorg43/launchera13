.class public final synthetic Lcom/android/wm/shell/compatui/letterboxedu/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final synthetic a:Lcom/android/wm/shell/compatui/letterboxedu/c;


# direct methods
.method public static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/wm/shell/compatui/letterboxedu/c;

    invoke-direct {v0}, Lcom/android/wm/shell/compatui/letterboxedu/c;-><init>()V

    sput-object v0, Lcom/android/wm/shell/compatui/letterboxedu/c;->a:Lcom/android/wm/shell/compatui/letterboxedu/c;

    return-void
.end method

.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    invoke-static {}, Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduAnimationController;->a()V

    return-void
.end method
