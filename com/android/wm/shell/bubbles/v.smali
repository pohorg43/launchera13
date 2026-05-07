.class public final synthetic Lcom/android/wm/shell/bubbles/v;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/wm/shell/bubbles/BubbleData$TimeSource;


# static fields
.field public static final synthetic a:Lcom/android/wm/shell/bubbles/v;


# direct methods
.method public static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/wm/shell/bubbles/v;

    invoke-direct {v0}, Lcom/android/wm/shell/bubbles/v;-><init>()V

    sput-object v0, Lcom/android/wm/shell/bubbles/v;->a:Lcom/android/wm/shell/bubbles/v;

    return-void
.end method

.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final currentTimeMillis()J
    .registers 3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method
