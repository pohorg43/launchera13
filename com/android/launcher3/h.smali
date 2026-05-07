.class public final synthetic Lcom/android/launcher3/h;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/util/SafeCloseable;


# static fields
.field public static final synthetic a:Lcom/android/launcher3/h;


# direct methods
.method public static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/launcher3/h;

    invoke-direct {v0}, Lcom/android/launcher3/h;-><init>()V

    sput-object v0, Lcom/android/launcher3/h;->a:Lcom/android/launcher3/h;

    return-void
.end method

.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final close()V
    .registers 1

    invoke-static {}, Lcom/android/launcher3/BubbleTextView;->c()V

    return-void
.end method
