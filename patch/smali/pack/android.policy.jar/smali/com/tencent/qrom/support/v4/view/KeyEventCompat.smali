.class public Lcom/tencent/qrom/support/v4/view/KeyEventCompat;
.super Ljava/lang/Object;
.source "KeyEventCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qrom/support/v4/view/KeyEventCompat$HoneycombKeyEventVersionImpl;,
        Lcom/tencent/qrom/support/v4/view/KeyEventCompat$BaseKeyEventVersionImpl;,
        Lcom/tencent/qrom/support/v4/view/KeyEventCompat$KeyEventVersionImpl;
    }
.end annotation


# static fields
.field static final IMPL:Lcom/tencent/qrom/support/v4/view/KeyEventCompat$KeyEventVersionImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 117
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 118
    new-instance v0, Lcom/tencent/qrom/support/v4/view/KeyEventCompat$HoneycombKeyEventVersionImpl;

    invoke-direct {v0}, Lcom/tencent/qrom/support/v4/view/KeyEventCompat$HoneycombKeyEventVersionImpl;-><init>()V

    sput-object v0, Lcom/tencent/qrom/support/v4/view/KeyEventCompat;->IMPL:Lcom/tencent/qrom/support/v4/view/KeyEventCompat$KeyEventVersionImpl;

    .line 122
    :goto_0
    return-void

    .line 120
    :cond_0
    new-instance v0, Lcom/tencent/qrom/support/v4/view/KeyEventCompat$BaseKeyEventVersionImpl;

    invoke-direct {v0}, Lcom/tencent/qrom/support/v4/view/KeyEventCompat$BaseKeyEventVersionImpl;-><init>()V

    sput-object v0, Lcom/tencent/qrom/support/v4/view/KeyEventCompat;->IMPL:Lcom/tencent/qrom/support/v4/view/KeyEventCompat$KeyEventVersionImpl;

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    return-void
.end method

.method public static hasModifiers(Landroid/view/KeyEvent;I)Z
    .locals 2
    .param p0, "event"    # Landroid/view/KeyEvent;
    .param p1, "modifiers"    # I

    .prologue
    .line 139
    sget-object v0, Lcom/tencent/qrom/support/v4/view/KeyEventCompat;->IMPL:Lcom/tencent/qrom/support/v4/view/KeyEventCompat$KeyEventVersionImpl;

    invoke-virtual {p0}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v1

    invoke-interface {v0, v1, p1}, Lcom/tencent/qrom/support/v4/view/KeyEventCompat$KeyEventVersionImpl;->metaStateHasModifiers(II)Z

    move-result v0

    return v0
.end method

.method public static hasNoModifiers(Landroid/view/KeyEvent;)Z
    .locals 2
    .param p0, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 143
    sget-object v0, Lcom/tencent/qrom/support/v4/view/KeyEventCompat;->IMPL:Lcom/tencent/qrom/support/v4/view/KeyEventCompat$KeyEventVersionImpl;

    invoke-virtual {p0}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/tencent/qrom/support/v4/view/KeyEventCompat$KeyEventVersionImpl;->metaStateHasNoModifiers(I)Z

    move-result v0

    return v0
.end method

.method public static metaStateHasModifiers(II)Z
    .locals 1
    .param p0, "metaState"    # I
    .param p1, "modifiers"    # I

    .prologue
    .line 131
    sget-object v0, Lcom/tencent/qrom/support/v4/view/KeyEventCompat;->IMPL:Lcom/tencent/qrom/support/v4/view/KeyEventCompat$KeyEventVersionImpl;

    invoke-interface {v0, p0, p1}, Lcom/tencent/qrom/support/v4/view/KeyEventCompat$KeyEventVersionImpl;->metaStateHasModifiers(II)Z

    move-result v0

    return v0
.end method

.method public static metaStateHasNoModifiers(I)Z
    .locals 1
    .param p0, "metaState"    # I

    .prologue
    .line 135
    sget-object v0, Lcom/tencent/qrom/support/v4/view/KeyEventCompat;->IMPL:Lcom/tencent/qrom/support/v4/view/KeyEventCompat$KeyEventVersionImpl;

    invoke-interface {v0, p0}, Lcom/tencent/qrom/support/v4/view/KeyEventCompat$KeyEventVersionImpl;->metaStateHasNoModifiers(I)Z

    move-result v0

    return v0
.end method

.method public static normalizeMetaState(I)I
    .locals 1
    .param p0, "metaState"    # I

    .prologue
    .line 127
    sget-object v0, Lcom/tencent/qrom/support/v4/view/KeyEventCompat;->IMPL:Lcom/tencent/qrom/support/v4/view/KeyEventCompat$KeyEventVersionImpl;

    invoke-interface {v0, p0}, Lcom/tencent/qrom/support/v4/view/KeyEventCompat$KeyEventVersionImpl;->normalizeMetaState(I)I

    move-result v0

    return v0
.end method